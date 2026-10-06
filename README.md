# SciLifeLab OMERO landing page and documentation

This repository contains two static sites for the SciLifeLab OMERO prototype
service, both served from the same host:

- `hugo/` builds the landing page, served under `/landing`
- `mkdocs/` builds the user documentation, served under `/docs`

`deploy.jsonnet` builds both in init containers and serves them from a single
nginx.

## Contact

For any questions please contact omero@scilifelab.se or open an issue in this
repository. Issues here are for the website and the documentation; they are not
a support channel for the service itself.
