# OMERO.web

Working with your data in a browser, without installing anything.

OMERO.web is the browser client that ships with OMERO. It needs no installation
and no connection settings, which makes it the quickest way to look at data that
is already in the server. For SciLifeLab OMERO it is at
[/webclient/](/webclient/).

## What the web client can do

Browse the project, dataset and image hierarchy, view images with adjustable
rendering settings, read and write annotations such as tags, key-value pairs,
comments and file attachments, search across your groups, and download original
files.

OME's [clients overview](https://omero.readthedocs.io/en/stable/users/clients-overview.html)
compares OMERO.web against the desktop client feature by feature.

## What it cannot do

Import data. The web client has no import route, so use
[OMERO.insight](omero-insight.md) or the [command line](command-line.md)
instead. [Uploading data](../using-omero/uploading.md) covers both.

## Web extensions

OME maintains optional add-ons that appear inside the web client, and three of
them are installed on SciLifeLab OMERO:

- [OMERO.figure](https://github.com/ome/omero-figure) for assembling
  publication figures from images in the server
- [OMERO.iviewer](https://github.com/ome/omero-iviewer) for a richer viewer
  with region-of-interest drawing
- [OMERO.parade](https://github.com/ome/omero-parade) for filtering datasets by
  their annotations

OME's
[OMERO.web extensions guide](https://omero-guides.readthedocs.io/en/latest/web_addons.html)
documents these and the rest of the set. Anything else described there is not
installed here; ask [omero@scilifelab.se](mailto:omero@scilifelab.se) if you
need one of them.

A figure built in OMERO.figure lives in the server, so it is deleted with
everything else when your allocation ends. Export it while you still can; see
[When your project ends](../data-management/end-of-project.md).

## Browser requirements

A current version of Firefox, Chrome, Edge or Safari. Nothing else needs to be
installed on your machine.
