# SciLifeLab OMERO landing page

This repository contains the hugo build files for the static landing page for the SciLifeLab OMERO service. 

## Contact

For any questions please contact omero@scilifelab.se or open an issue in this repository. 

## Package

This repository has a GitHub action configured that builds a container image building and serving the static website on pushes to main, as well as releases, and pushes it to the GitHub Container registry. It can also be triggered manually for testing purposes. 

## Local Development

In order to make (larger) changes to the website, you can edit the files locally. 

1. Clone the repository
```
git clone git@github.com:ScilifelabDataCentre/omero-landing-page.git
cd omero-landing-page
```

2. Edit files in a dedicated git branch
```
git checkout -b <type>/<my-new-branch-name>
```

Do edits and version control them. We use conventional commit messages, where `<type>`  can be one of the following:

| Type    | Description                                  |
|---------|----------------------------------------------|
| feat    | A new feature                                |
| fix     | A bug fix or improvement of existing feature |
| content | New content such as markdown pages           |
| docs    | Documentation-only changes                   |
| test    | Adding or modifying tests                    |
| chore   | Maintenance, tooling, dependencies update    |

3. Serve the website locally

In order to observe the updated website locally, you can either have Hugo natively installed on your system or use a docker container, see below. 

4. Push changes to GitHub and open a PR
```
git push origin <type>/<my-new-branch-name>
```
Open a PR at `https://github.com/ScilifelabDataCentre/omero-landing-page/pull/new/<type>/<my-new-branch-name>`. 

### Using the Hugo development server

If you have Hugo natively installed on your system you can run the Hugo development server to build the site and serve it. 
```
cd hugo/
hugo server
```
The development server monitors the repository for changes and rebuilds the website continously. 

### Using docker

This setup assumes you have docker installed locally on your system. 

1. Build a docker container building the static website based on the current state of the repository and serving it using nginx, using the provided Dockerfile. 
```
# from project root where Dockerfile lives
docker build -t omero-landing-page:latest \
  --build-arg HUGO_ENV_ARG=production \
  .
```
2. Run the container and map to localhost:8080
```
docker run --rm --name omero-site -p 8080:8080 omero-landing-page:latest
```
3. Visit http://localhost:8080 in your browser. 

_Note:_
Changes to the files will require the container to be rebuilt to be visible. 