# OMERO.insight

The desktop client, and the usual route for importing data.

OMERO.insight is OME's desktop client. It covers most of what the web client
does and adds the import wizard, which is why people install it even when they
otherwise work in the browser.

## Installing

Download the client for your platform from the
[OMERO downloads page](https://www.openmicroscopy.org/omero/downloads/) and
follow the instructions there. OME's
[clients overview](https://omero.readthedocs.io/en/stable/users/clients-overview.html)
explains how OMERO.insight relates to OMERO.importer, which is the same importer
shipped on its own.

## Connecting to SciLifeLab OMERO

Add a server in the login window with these settings:

- Server address: `omero.scilifelab.se`
- Port: `4064`
- Username: your session token
- Password: the same session token again

The desktop client cannot do browser-based single sign-on, so it attaches to the
session you already have. Sign in to the [web client](/webclient/) first, copy the
session token from the page that appears after authentication, and paste it into
both fields.

!!! tip "Yes, the same string in both boxes"

    Username and password both take the token. That is how OMERO joins an
    existing session, and it means your SUPR username is not used here at all.
    See [Accounts and login](../getting-started/accounts-and-login.md).

A token stays valid while it is being used and goes stale after a stretch of
inactivity, so when a login that worked last week is refused, sign in again and
copy the new token.

If you belong to more than one group, OMERO.insight lets you switch between them
after login rather than at login.

## Importing data

The import wizard is described in OME's
[import guide](https://omero-guides.readthedocs.io/en/latest/upload/docs/import.html).
[Uploading data](../using-omero/uploading.md) adds what is specific to this
service, and
[Data you may not upload](../data-management/sensitive-data.md) sets out the one
hard rule: no personal data, in image content, filenames or metadata.

## Troubleshooting connections

Port `4064` is not a web port, so a university or hospital firewall may block it
even though the web client works fine from the same machine. If OMERO.insight
times out at login but the [web client](/webclient/) loads, that is the most likely
cause, and your local IT department is the place to start.

!!! info "Client and server versions"

    OMERO.insight has to be compatible with the server it connects to, and we
    have not published the server version SciLifeLab OMERO runs. If the login
    window reports a version mismatch, email
    [omero@scilifelab.se](mailto:omero@scilifelab.se) and we will tell you which
    release to install.
