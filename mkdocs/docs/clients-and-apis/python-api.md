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
- username: your session token
- password: the same session token again

There is no OMERO password on this service. Sign in to the
[web client](/webclient/) and copy the session token from the page that appears
after authentication, then pass it as both the username and the password.
[Accounts and login](../getting-started/accounts-and-login.md) shows where the
link is.

Passing one value twice looks wrong, so it is worth naming the variable for what
it is:

```python
token = os.environ["OMERO_SESSION_TOKEN"]
conn = BlitzGateway(token, token, host="omero.scilifelab.se", port=4064)
```

This is OMERO's mechanism for attaching to an existing session, and it is why
your SUPR username does not appear anywhere in the connection code.

As with the desktop client, port `4064` is not a web port and may be blocked by
an institutional firewall even when the web client works.

Read the token from the environment or prompt for it rather than writing it into
a script you commit to a repository. It goes stale after a period of disuse, so
a script that hard-codes one will break anyway.

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
