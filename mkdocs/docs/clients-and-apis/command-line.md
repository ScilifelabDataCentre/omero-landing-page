# Command line

The omero CLI, for imports, exports and scripted operations.

The `omero` command is the scriptable client. It is the right tool for a large
import, for anything you want to repeat, and for moving data between groups. OME
documents it as
[the command line interface as an OMERO client](https://omero.readthedocs.io/en/stable/users/cli/index.html).

## Installing the CLI

The CLI comes with `omero-py`, so
[OME's installation page](https://omero.readthedocs.io/en/stable/users/cli/installation.html)
and the [Python API](python-api.md) page describe the same install. Once it is
on your path, `omero help` lists the commands and
[the overview](https://omero.readthedocs.io/en/stable/users/cli/overview.html)
explains the shared options.

## Logging in and session handling

Log in once and the CLI keeps a local session, so subsequent commands do not ask
again:

```bash
omero login your-username@omero.scilifelab.se:4064
```

`omero sessions list` shows what you have open and `omero logout` ends the
current one. OME's
[sessions documentation](https://omero.readthedocs.io/en/stable/users/cli/sessions.html)
covers the rest, including logging straight into a particular group with `-g`.

## Importing

```bash
omero import /path/to/your/images
```

OME's [import documentation](https://omero.readthedocs.io/en/stable/users/cli/import.html)
covers the options, and
[import targets](https://omero.readthedocs.io/en/stable/users/cli/import-target.html)
covers directing the import into a specific project and dataset. For many files
at once, use
[bulk import](https://omero.readthedocs.io/en/stable/users/cli/import-bulk.html),
which reads a configuration file instead of a long command line. See also
[Uploading data](../using-omero/uploading.md) and
[Batch operations](../workflows/batch-operations.md).

## Exporting

`omero export` writes images back out as OME-TIFF or XML;
[OME's export documentation](https://omero.readthedocs.io/en/stable/users/cli/export.html)
has the details. [Exporting your data](../data-management/exporting.md) explains
which route to pick when you want a whole project rather than single images.

## Commands worth knowing

- [`omero obj` and the annotation commands](https://omero.readthedocs.io/en/stable/users/cli/containers-annotations.html)
  for creating projects and datasets and attaching tags and key-value pairs
- [`omero chgrp`](https://omero.readthedocs.io/en/stable/users/cli/chgrp.html)
  for moving data into another group
- [`omero chown`](https://omero.readthedocs.io/en/stable/users/cli/chown.html)
  for handing data to another user, for instance when someone leaves the project
- [`omero delete`](https://omero.readthedocs.io/en/stable/users/cli/delete.html)
  for removing data

!!! warning "Deletion is permanent"

    `omero delete` removes data from the server, OMERO offers no undo, and
    SciLifeLab OMERO is not backed up, so we cannot restore it for you either.
    Check what you have selected before you run it.
