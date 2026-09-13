# Accounts and login

How you get an account once your project is approved, and how to sign in.

There are two different ways in, and which one you use depends on the client
rather than on who you are. The browser uses single sign-on. Everything else
uses a session token you fetch from the browser first.

## Getting an account

You do not create an account yourself and there is no sign-up form. For a
research project, a SUPR account is created for you when your proposal is
approved, and the matching OMERO account follows. For a facility delivery
project, the facility adds you to its SUPR project and the account is created
the same way. Either route ends with you being a member of one OMERO group; see
[Groups and membership](groups-and-membership.md).

Your OMERO username is your SUPR username. It is usually the first four
characters of your first name followed by the first four of your last name,
sometimes with digits appended to keep it unique, so Jonas Anderson becomes
`jonaande`. You will need it for every client except the browser, and it is
shown to you at sign-in, so there is no need to guess.

## Signing in for the first time

Go to [/webclient/](/webclient/) and sign in with your university or
institution account through SWAMID, the Swedish identity federation. There is no
OMERO password to set or remember: the web client never asks for one.

After you authenticate, an interim page confirms who you are and offers the two
ways forward.

![The OMERO web client after SWAMID sign-in, showing the signed-in username, a Continue button, and a link to obtain a session token](../assets/ss-login-token.png)

Press **Continue** to go to the web client. [First steps](first-steps.md) picks
up from there.

### Getting a session token for the desktop and API clients

OMERO.insight, Fiji, napari, the Python API and the command line all connect
over port `4064`, which is not a web port and cannot carry a browser-based
single sign-on. They authenticate with your username and a session token
instead, and the token takes the place of a password in every client's login
dialog.

Follow **obtain a session token here** on the page above, copy the token, and
paste it into the client. Repeat that whenever a client stops being able to
connect, because tokens do not last indefinitely. A token grants everything your
account can do, so treat it like a password: do not commit it to a repository or
paste it into a shared document.

The client pages cover the dialogs themselves:
[OMERO.insight](../clients-and-apis/omero-insight.md),
[Fiji and ImageJ](../clients-and-apis/fiji-imagej.md),
[napari](../clients-and-apis/napari.md),
[Python API](../clients-and-apis/python-api.md) and
[command line](../clients-and-apis/command-line.md). For an unattended batch
job, the same mechanism supplies the session key described in
[Working from an HPC system](../workflows/hpc.md).

## Signing in from outside Sweden

A collaborator abroad does not need a Swedish identity. SUPR authenticates
through eduGAIN, the international federation that SWAMID belongs to, so an
account at a European university normally works directly at the same sign-in
page. Everything after that is identical, session token included.

!!! info "If your institution is not in the federation"

    eduGAIN covers academic institutions. Someone at a hospital, region,
    company or research institute, or at a university outside the federation,
    may have no federated login to use. We have not documented a route for that
    case yet, so email [omero@scilifelab.se](mailto:omero@scilifelab.se) before
    you count on a collaborator being able to sign in.

## Adding people to your group

Not in OMERO. Membership is administered in the SUPR project that your
allocation belongs to, and SUPR synchronises the change to your OMERO group.
Adding someone to the project in SUPR adds them to the group; removing them
there removes their access. Nobody inside the group can administer it from the
OMERO side, because this service does not use OMERO's group owner role.

[Groups and membership](groups-and-membership.md) has the detail, and
[Sharing with collaborators](../using-omero/sharing.md) covers what a new member
can then do with your data, which on this service is everything.

## Losing access when an allocation ends

You get one month of notice by email before an allocation ends. When it does,
your account is disabled and the project's data is deleted, with no grace period
after the deadline. A renewal or extension is requested in SUPR while the notice
period is still running.

[When your project ends](../data-management/end-of-project.md) sets out the
timeline and what to export before it runs out.
