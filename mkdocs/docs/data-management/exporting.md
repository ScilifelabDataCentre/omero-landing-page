# Exporting your data

Getting images, annotations and results back out of the service.

OMERO distinguishes two things that people both call exporting, and picking the
wrong one is the usual reason an export disappoints:

- **download** gives you the original file, byte for byte, in its original format
- **export** generates a *new* file from the image in OMERO, such as a JPEG, TIFF
  or OME-TIFF, rendered with the current settings

Download when you want your data back. Export when you want a figure, or a
format another tool can read. OME's
[download and export guide](https://omero-guides.readthedocs.io/en/latest/download/docs/download.html)
covers every route below.

!!! warning "Export before your allocation ends"

    Data is deleted automatically one month after notice, with no grace period,
    and the service is not backed up. See
    [When your project ends](end-of-project.md).

## Exporting single images

From the [web client](/webclient/), select images and use the download icon in
the right-hand pane. `Download` gives you the originals; the
`Batch Image Export` script builds a zip in a format you choose, and appears
under the script icon.

From the command line,
[`omero export`](https://omero.readthedocs.io/en/stable/users/cli/export.html)
writes OME-TIFF or OME-XML. See
[Command line](../clients-and-apis/command-line.md).

## Exporting a whole project

Two tools built for volume rather than for single images:

- [OMERO.downloader](https://github.com/ome/omero-downloader), a standalone
  command line application that downloads or exports whole datasets along with
  their metadata, and remembers what it has already fetched so a re-run does not
  start over. OME's guide walks through it.
- [omero-cli-transfer](https://github.com/ome/omero-cli-transfer), which packages
  a project with its metadata so it can be moved to another OMERO server.

Both are worth using over a loop around `omero export`. See
[Batch operations](../workflows/batch-operations.md).

## What an export does and does not include

OME-TIFF carries a useful amount with it: regions of interest and tags survive a
round trip, which you can confirm by exporting an annotated image and reimporting
it. That is also the practical way to move an image with its metadata to a
different OMERO server.

Other formats carry much less. A JPEG or a flat TIFF is a picture, not data: it
has your rendering settings baked in and the acquisition metadata, annotations
and regions of interest are gone. Do not treat one as your copy of the data.

Key-value pairs and OMERO tables are metadata rather than image content, and
come out separately. OMERO.downloader can fetch metadata as OME-XML, which is
the route to take if you want the annotations as well as the pixels.

## Verifying an export before you rely on it

Check the export, not the fact that the export ran. Open one file and confirm the
channel, Z and time counts match the original, and that the file size is
plausible for what you asked for. If you exported to keep a copy past the end of
your allocation, do this while you can still get back into the service.
