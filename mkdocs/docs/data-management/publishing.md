# Publishing to a public repository

Moving a finished dataset into a public image data repository.

!!! warning "Not supported yet"

    SciLifeLab OMERO has no direct route into public image data repositories today. Support for this is planned. For now, export your data and submit it to the repository yourself, and email [omero@scilifelab.se](mailto:omero@scilifelab.se) if you would like help.

## Why annotate as you go

A repository submission asks for the experimental context, not just the pixels,
and reconstructing it after the fact is the expensive way to do this. Annotate
during the project instead. See
[Metadata for publication](metadata-for-publication.md), which covers what to
record and the community guidelines worth following.

## Exporting a dataset for submission

Download the originals rather than exporting rendered images, since a repository
wants the data and not a picture of it. OME-TIFF is the format that carries
annotations and regions of interest with it. See
[Exporting your data](exporting.md).

## Repositories to consider

- the [Image Data Resource](https://idr.openmicroscopy.org/), OME's own curated
  repository for reference imaging datasets, which is itself built on OMERO
- the [BioImage Archive](https://www.ebi.ac.uk/bioimage-archive/) at the EBI,
  which accepts bioimaging data more broadly

Check the journal's requirements too, since some name a specific repository.

## Publishing from within OMERO

OMERO has its own mechanism for making data public: a read-only group plus a
special public user, so that a URL works without a login. OME describes it in
[preparing data for publication using OMERO](https://omero-guides.readthedocs.io/en/latest/introduction/docs/data-publication.html).

It is a server-level configuration rather than something a user can turn on, and
we have not enabled it on SciLifeLab OMERO. Treat this service as login-only;
see [Sharing with collaborators](../using-omero/sharing.md).

## Planned support

Making publication easier is on the roadmap, but there is no date and nothing to
use today. If you are working towards a submission, tell us at
[omero@scilifelab.se](mailto:omero@scilifelab.se) so we know what to build
towards, and so we can help with the export in the meantime.
