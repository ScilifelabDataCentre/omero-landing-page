# Python API

Reaching your data from Python with omero-py and the Blitz gateway.

`omero-py` is OME's Python client library. The Blitz gateway is the friendlier
layer on top of it, and is what most analysis scripts use. OME's
[OMERO APIs overview](https://omero-guides.readthedocs.io/en/latest/api_usage.html)
lists the equivalent libraries for Java, MATLAB and R if Python is not your
language.

## Installing omero-py

Follow OME's
[setup instructions](https://omero-guides.readthedocs.io/en/latest/python/docs/setup.html).
`omero-py` depends on the Ice bindings, which are the part that usually goes
wrong, and OME's page tells you how to get them from conda-forge rather than
building them yourself.

## Connecting and authenticating

OME's
[getting started guide](https://omero-guides.readthedocs.io/en/latest/python/docs/gettingstarted.html)
has the connection code. The values to give it for this service are:

- host: `omero.scilifelab.se`
- port: `4064`
- username and password: the same ones you use for the
  [web client](/webclient/)

As with the desktop client, port `4064` is not a web port and may be blocked by
an institutional firewall even when the web client works.

Do not put your password in a script that you commit to a repository. Read it
from the environment or prompt for it.

## Reading and writing data

The getting started guide covers loading images and their metadata, and writing
annotations and results back. The full class reference is the
[omero-py documentation](https://omero-py.readthedocs.io/en/stable/).

## Closing connections cleanly

A connection you do not close holds a session on the server. Use the Blitz
gateway as a context manager, or call `close()` in a `finally` block, so a
script that fails partway through still lets go.

## Running code on the server instead

If what you want is to run the same operation over many images, an OMERO server
script may fit better than a script on your own machine. See OME's
[server script guide](https://omero-guides.readthedocs.io/en/latest/python/docs/server_script.html)
and [Batch operations](../workflows/batch-operations.md).

!!! info "Installing server scripts"

    Adding a new script to the server needs administrator rights, so it is not
    something you can do yourself. Email
    [omero@scilifelab.se](mailto:omero@scilifelab.se) if you have a script you
    would like installed.
