# Troubleshooting

Common failures and what to try before writing to us.

!!! tip "Start here: can you reach port 4064?"

    A local firewall blocking outbound port `4064` is the single most common
    problem reported to us. It is what makes OMERO.insight, Fiji, napari, the
    Python API and the command line time out on a machine where
    [/webclient/](/webclient/) works perfectly, because the web client uses
    ordinary HTTPS and everything else does not.

    Test it before assuming anything else is wrong:

    ```bash
    nc -vz omero.scilifelab.se 4064
    ```

    If that hangs or is refused while the web client loads in your browser, the
    block is between you and the server, and your institution's IT department
    is who can open it. Nothing you change in the client will help.

## Client cannot connect

Work through it in this order.

1. Confirm the web client works from the same machine. If it does not, the
   problem is your account or the service, not the port; see below.
2. Test port `4064` as above. A block is the usual answer, especially on a
   hospital, company or guest network.
3. Try from a different network, for instance a home connection or a phone
   hotspot. If it works there, you have confirmed the firewall.
4. Check the server address is `omero.scilifelab.se` and not a copied staging
   hostname.

A VPN into your institution can fix this or cause it, depending on which way
the institution filters, so it is worth trying with the VPN both on and off.

## Cannot sign in

The web client and the other clients fail for different reasons, because they
authenticate differently. See
[Accounts and login](../getting-started/accounts-and-login.md).

For the web client, sign-in goes through SWAMID with your university or
institution account. There is no OMERO password, so there is nothing to reset
here. If your institution's login page rejects you, that is an issue with that
account rather than with OMERO. If you get through SWAMID but OMERO says you
have no account, the SUPR synchronisation may not have reached us yet; give it
an hour, then email us.

For a desktop or API client, the two usual causes are:

- **The token has expired.** Tokens do not last indefinitely. Fetch a fresh one
  from the web client and paste it in again. This is the answer when a client
  that worked last week suddenly does not.
- **The username is wrong.** It is your SUPR username, typically four
  characters of your first name plus four of your last name, and not your email
  address. It is shown to you on the page you fetch the token from.

A newly added group member can also simply be too early: membership comes from
SUPR and takes up to about an hour to appear.

## Import fails or stalls

- **An error about space.** The group has hit its quota, which is shared across
  everyone in the project and enforced with no margin. See
  [Quotas and limits](quotas-and-limits.md).
- **An unreadable or partly read file.** Bio-Formats may not support that exact
  variant of the format, or the file may depend on a companion file that was not
  included. Check [Supported formats](../using-omero/supported-formats.md) and
  import the whole original folder rather than a single file pulled out of it.
- **A stall on a large batch.** Use a bulk import from the command line rather
  than the desktop wizard; it is more robust over long runs and easier to
  restart. See [Batch operations](../workflows/batch-operations.md).
- **A repeated run after a failure.** Check what actually arrived before
  importing again, or you will end up with duplicates.

## Images render incorrectly

Usually the rendering settings rather than the data. Channel colours, contrast
limits and which channels are active are stored per user, so what you see is not
necessarily what a colleague sees. Reset them in the viewer, and use "save to
all" or copy settings across images when you want a consistent look. See
[Viewing and annotating](../using-omero/viewing-and-annotating.md).

If the dimensions themselves are wrong, so a z-stack appears as timepoints or
channels are interleaved oddly, the import read the file's metadata differently
from the acquisition software. Say which instrument and file format it came
from when you report it, because that is what OME needs to look at a
Bio-Formats question.

## Slow transfers

The service is in Sweden, at Chalmers e-Commons and SciLifeLab Data Centre, and
reaching it from elsewhere in Europe adds latency that shows up most on many
small files. Some things that help:

- Import and export from the command line rather than a desktop client for
  large volumes.
- Use a wired connection on campus rather than wifi or a VPN, both of which are
  often the actual bottleneck.
- Do not download whole images when you only need part of them; reading through
  the API fetches just the planes you ask for. See
  [Analysing data on your own machine](../workflows/local-analysis.md).
- Leave plenty of time for an end-of-project export. See
  [When your project ends](../data-management/end-of-project.md).

## Still stuck

Email [omero@scilifelab.se](mailto:omero@scilifelab.se) with what you tried,
what you saw, the client and its version, and whether the web client behaves
differently from the desktop one. That last difference is often the whole
diagnosis. [Getting help](../support.md) covers what else we can help with, and
[Service status and availability](service-status.md) covers how outages are
announced.
