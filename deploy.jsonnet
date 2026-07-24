function(
  app,
  url,
  commit,
  sshSecretName='deploy-ssh-config',
  gateway='omero-prod-gateway',
  gatewaySection='https',
  hostname='omero.scilifelab.se',
  subPath='landing',
  hugoImage='ghcr.io/gohugoio/hugo:v0.160.1'
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
