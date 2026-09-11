# Uploading data

The routes for getting image data into your group, and which to use when.

There are two import routes, and the browser is not one of them. OME's
[import guide](https://omero-guides.readthedocs.io/en/latest/upload/docs/import.html)
covers both in detail; this page is about which to pick and what to expect on
this service.

## Importing from OMERO.insight

The desktop client's import wizard is the usual route: you queue up files or
folders, choose where they should land, and watch the progress. Use it for
anything you would describe as a normal day's acquisitions. See
[OMERO.insight](../clients-and-apis/omero-insight.md) for installation and the
connection settings.

## Importing from the command line

`omero import` is the better choice when the import is large, needs to run
unattended, or needs to be repeated the same way each time:

```bash
omero login your-username@omero.scilifelab.se:4064
omero import /path/to/your/images
```

OME documents the
[command line importer](https://omero.readthedocs.io/en/stable/users/cli/import.html)
and
[bulk import](https://omero.readthedocs.io/en/stable/users/cli/import-bulk.html),
which reads a configuration file so you can describe a large, structured import
once rather than assembling a long command. See
[Command line](../clients-and-apis/command-line.md).

## Choosing a target project and dataset

Both routes let you import into an existing project and dataset, or create them
as you go. Doing this at import time is much less work than reorganising
afterwards, so decide the structure first: see
[Organising your data](organising-data.md). OME's
[import target documentation](https://omero.readthedocs.io/en/stable/users/cli/import-target.html)
covers the command line syntax for this.

Screening data is the exception. Import the plate as a plate and let OMERO build
the screen, plate and well structure from the metadata in your files.

## Large imports and what to expect

Import copies your files to the server and then reads them, so the time it takes
is dominated by your upload bandwidth. Two things to plan for:

- the default quota is 100 GB, so check what you have before starting an import
  that might exceed it
- select the master file for multi-file formats rather than the whole directory,
  as set out in
  [supported formats](supported-formats.md)

!!! info "Import over a slow or interrupted connection"

    A long import from a laptop on wifi is the most common way an import fails
    halfway. Prefer a wired connection for anything large, and prefer the
    command line, which is easier to restart.

## Checking an import succeeded

Open the target dataset in the [web client](/webclient/) and check that the
image count and the channel and plane counts match what you imported. A file
that imported as a single flat plane when you expected a Z-stack usually means
the wrong file in a multi-file format was selected.

If an import fails, keep the error message and send it to
[omero@scilifelab.se](mailto:omero@scilifelab.se). See
[Getting help](../support.md) for what else to include.

## Before you upload

Uploaded data must contain no personal data. See the [access page](/landing/get-access/) for the full set of rules that apply to your data.
