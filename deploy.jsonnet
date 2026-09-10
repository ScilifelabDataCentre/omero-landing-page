function(
  app,
  url,
  commit,
  sshSecretName='deploy-ssh-config',
  gateway='omero-prod-gateway',
  gatewaySection='https',
  hostname='omero.scilifelab.se',
  subPath='landing',
  docsSubPath='docs',
  hugoImage='ghcr.io/gohugoio/hugo:v0.160.1',
  mkdocsImage='squidfunk/mkdocs-material:9.7.7'
) [
  {
    apiVersion: 'v1',
    kind: 'Service',
    metadata: {
      name: app,
    },
    spec: {
      selector: {
        app: app,
      },
      ports: [
        {
          port: 80,
          targetPort: 80,
        },
      ],
    },
  },

  {
    apiVersion: 'gateway.networking.k8s.io/v1',
    kind: 'HTTPRoute',
    metadata: {
      name: app,
    },
    spec: {
      parentRefs: [
        {
          name: gateway,
	  sectionName: gatewaySection,
          namespace: 'gateway'
        },
      ],
      hostnames: [
        hostname,
      ],
      rules: [
        {
          matches: [
            {
              path: {
                type: 'PathPrefix',
                value: '/%s' % subPath,
              },
            },
            {
              path: {
                type: 'PathPrefix',
                value: '/%s' % docsSubPath,
              },
            },
          ],
          backendRefs: [
            {
              name: app,
              port: 80,
            },
          ],
        },
      ],
    },
  },

  {
    apiVersion: 'apps/v1',
    kind: 'Deployment',
    metadata: {
      name: app,
    },
    spec: {
      replicas: 1,
      revisionHistoryLimit: 3,
      selector: {
        matchLabels: {
          app: app,
        },
      },
      template: {
        metadata: {
          labels: {
            app: app,
          },
        },
        spec: {
          volumes: [
            {
              name: 'site',
              emptyDir: {},
            },
            {
              name: 'docs',
              emptyDir: {},
            },
          ],
          initContainers: [
            {
              name: 'build-site',
              image: hugoImage,
              securityContext: {
                runAsGroup: 0,
                runAsUser: 0,
              },
              volumeMounts: [
                {
                  name: 'site',
                  mountPath: '/output',
                },
              ],
              command: [
                '/bin/sh',
                '-c',
                |||
                  set -e
                  echo "Checking out repo"
                  git clone %(url)s  ./repo
                  cd ./repo && git checkout %(commit)s
                  echo "Building Hugo site..."
                  cd hugo && hugo --minify --destination /output -b https://%(hostname)s/%(subPath)s
                ||| % { url: url, commit: commit, hostname: hostname, subPath: subPath },
              ],
            },
            {
              name: 'build-docs',
              image: mkdocsImage,
              securityContext: {
                runAsGroup: 0,
                runAsUser: 0,
              },
              volumeMounts: [
                {
                  name: 'docs',
                  mountPath: '/output',
                },
              ],
              // The image entrypoint is mkdocs itself, so it has to be replaced
              // to get a shell for the clone step.
              command: ['/bin/sh'],
              args: [
                '-c',
                |||
                  set -e
                  echo "Checking out repo"
                  git clone %(url)s ./repo
                  cd ./repo && git checkout %(commit)s
                  echo "Building MkDocs site..."
                  cd mkdocs && mkdocs build --site-dir /output
                ||| % { url: url, commit: commit },
              ],
            },
          ],
          containers: [
            {
              name: 'nginx',
              image: 'nginx:alpine',
              volumeMounts: [
                {
                  name: 'site',
                  mountPath: '/usr/share/nginx/html/%s' % subPath,
                },
                {
                  name: 'docs',
                  mountPath: '/usr/share/nginx/html/%s' % docsSubPath,
                },
              ],
              ports: [
                {
                  containerPort: 80,
                },
              ],
              readinessProbe: {
                httpGet: {
                  path: '/%s' % subPath,
                  port: 80,
                },
                initialDelaySeconds: 10,
                periodSeconds: 10,
              },
            },
          ],
        },
      },
    },
  },
]
