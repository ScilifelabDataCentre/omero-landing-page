# Batch operations

Doing the same thing to many images without clicking through the web client.

Two mechanisms cover almost everything: the command line, which runs on your
machine, and server-side scripts, which run on the server and appear in the web
client's script menu. OME's
[server-side scripts guide](https://omero-guides.readthedocs.io/en/latest/scripts/docs/index.html)
covers the second.

## Bulk import

`omero import --bulk` reads a small configuration file describing what to import
and where it should go, instead of you assembling one long command or repeating
the import by hand. OME documents the
[bulk import format](https://omero.readthedocs.io/en/stable/users/cli/import-bulk.html),
and it is the right tool for a directory tree of acquisitions that should become
a matching tree of projects and datasets.

See [Uploading data](../using-omero/uploading.md) and
[Command line](../clients-and-apis/command-line.md).

## Bulk annotation

Annotating a few hundred images by hand is not worth anyone's afternoon. OMERO
ships scripts for populating key-value pairs from a CSV file, so you can prepare
the metadata in a spreadsheet and apply it in one operation. OME's
[annotation scripts guide](https://omero-guides.readthedocs.io/en/latest/scripts/docs/annotation_scripts.html)
covers this, and their
[metadata guide](https://omero-guides.readthedocs.io/en/latest/upload/docs/metadata.html)
covers preparing the file.

The command line can also create containers and attach annotations directly; see
[`omero obj` and the annotation commands](https://omero.readthedocs.io/en/stable/users/cli/containers-annotations.html).

## Bulk export

`omero export` works over a list of images, and `omero-cli-transfer` moves whole
projects with their metadata intact. Both are covered in
[Exporting your data](../data-management/exporting.md).

## Running and writing scripts

OME's guides cover
[running the scripts that are installed](https://omero-guides.readthedocs.io/en/latest/scripts/docs/execute_scripts.html)
and
[writing your own](https://omero-guides.readthedocs.io/en/latest/scripts/docs/write_scripts.html).
A server-side script is worth writing when the operation should be repeatable by
everyone in the group rather than only by you, since it then appears in the web
client for all of them.

!!! info "Installing a script needs us"

    [Managing installed scripts](https://omero-guides.readthedocs.io/en/latest/scripts/docs/manage_scripts.html)
    requires administrator rights on the server, so you cannot add one to
    SciLifeLab OMERO yourself. Send the script to
    [omero@scilifelab.se](mailto:omero@scilifelab.se) and we will look at
    installing it.

## Scripting patterns that scale

If you are writing your own automation rather than using an installed script,
the [Python API](../clients-and-apis/python-api.md) page has the connection
details and the two habits that matter most at scale: never hardcode a password,
and always close the connection, because a script that loops over a thousand
images and leaks a session per iteration will exhaust the server long before it
finishes.
