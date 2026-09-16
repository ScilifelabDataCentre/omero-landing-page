# Delivering data as a facility

How a SciLifeLab facility hands captured data to the researchers it works with.

OME has written a walkthrough for exactly this role,
[OMERO walkthrough for facility managers](https://omero-guides.readthedocs.io/en/latest/example_facility_manager.html),
which threads together importing on behalf of others, administering groups and
users, and getting new users started. Read that first; this page records what is
different on SciLifeLab OMERO.

## How a facility is set up

Facilities are eligible for the service alongside life science researchers in
Sweden, and there is no reviewed proposal to submit. Instead we open a SUPR
round for your facility. Email
[omero@scilifelab.se](mailto:omero@scilifelab.se) to ask for one, and see the
[access page](/landing/get-access/).

Inside your own round you administer yourself, without coming back to us for
each change. You create a project for each of your user projects, and you add
and remove its members. Each SUPR project becomes one OMERO group, read-write,
containing your staff and that project's researchers.

Build your delivery workflow around that one-to-one mapping. It is what lets you
import straight into the group the researcher will work in, which skips
transferring anything afterwards and is the difference between a workflow you
can run yourself and one that needs us in the middle of it.

An allocation covers three things: uploading image data so you can collaborate
with your users, letting those users view and download their data, and
transferring data into a user's own project, for instance one granted through
the reviewed research track.

After the pilot phase, your facility covers the storage costs associated with
the allocation.

!!! tip "One project per user project, not one for everything"

    Every group on this service is read-write, so every member can edit and
    delete every other member's data. Since you can create as many SUPR
    projects as you need in your own round, there is no reason to put several
    unrelated user projects in one group: a mistake by one researcher would
    then reach another's data. See
    [Sharing with collaborators](../using-omero/sharing.md).

## How the researchers you serve get accounts

The same way your own staff do. Add the person to the relevant SUPR project in
your round, and SUPR creates the account if they do not already have one and
adds them to the matching OMERO group. There is nothing for them to apply for
and nothing for us to do.

They sign in with their own university or institution account: OMERO sends them
to SUPR, which authenticates against SWAMID for Swedish institutions and eduGAIN
for the rest of Europe. A researcher with no federated login at all is the one
case that still needs a conversation with us; see
[Accounts and login](../getting-started/accounts-and-login.md).

Membership changes reach OMERO within about an hour, so do not add anyone
directly in OMERO or the two will drift apart.

## Importing captured data

Importing data *as yourself* into a group the researcher is already in needs no
special rights, and is the arrangement described below.
Importing data *directly as another user* does need them: OMERO calls this restricted
administrator privilege, documented under
[administrators with restricted privileges](https://omero.readthedocs.io/en/stable/sysadmins/restricted-admins.html).
OME's walkthrough covers both the desktop and command line versions.

!!! info "Restricted admin rights are granted by us"

    Only a server administrator can grant them, so tell
    [omero@scilifelab.se](mailto:omero@scilifelab.se) if importing as another
    user is part of your delivery workflow. Without it you import as yourself
    and you stay the owner of the data, which is usually fine: in a read-write
    group the researcher can work with it regardless of who owns it. See
    [Delivering into the user's own group](#delivering-into-the-users-own-group).

For volume, use bulk import rather than the wizard; see
[Batch operations](batch-operations.md).

!!! warning "In-place import is not available"

    OME's walkthrough describes
    [in-place import](https://omero.readthedocs.io/en/stable/sysadmins/in-place-import.html),
    where OMERO points at files where they already sit instead of copying them.
    That requires the server to see your acquisition storage, and SciLifeLab
    OMERO has no shared filesystem with any other system. Imports here always
    copy the data in. See [Working from an HPC system](hpc.md).

## Delivering into the user's own group

The normal pattern, and the one to aim for: create the SUPR project for that
user project, add the researcher to it, and import the captured data straight
into the resulting OMERO group. Delivery is then finished the moment the import
is, with nothing to transfer.

Because the group is read-write, the researcher can view, download, annotate and
analyse the data whether or not the facility owns it. Ownership stays with
whoever imported, and for most delivery workflows that does not matter.

!!! warning "Everyone in the group can also delete"

    Read-write is the permission level every group on this service gets, so a
    researcher added to see their data can also edit and delete it, including
    data belonging to the facility. OMERO's read-only and read-annotate levels
    would express view-only access properly, but they are not available here.

    The mitigation is the one-project-per-user-project structure: it confines a
    mistake to a single user project's data. Do not use one group for several
    user projects. Keep your own copy of anything you cannot recapture, since
    the service holds no backups.

## Moving data between groups afterwards

Sometimes the data is already in the wrong place, for instance because it was
imported into the facility's own group before the user project existed, or
because the researcher has been granted their own allocation through the
reviewed track and wants it there. Two operations exist, both covered in OME's
[data management guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/data-management.html):

- `chgrp` moves data into another group, which changes who can see it
- `chown` changes the owner, so the researcher rather than the facility owns it

On this service you can do the first and not the second:

- [`omero chgrp`](https://omero.readthedocs.io/en/stable/users/cli/chgrp.html)
  is available to the owner of the data if they are a member of the target
  group. A facility can therefore move data it imported itself, but only once
  its own account has been added to the destination group.
- [`omero chown`](https://omero.readthedocs.io/en/stable/users/cli/chown.html)
  needs a full administrator or a restricted administrator with the Chown
  privilege. A facility has neither, so it cannot make the researcher the
  owner.

In practice the second rarely matters, because read-write access does not depend
on ownership. Where it genuinely does, email
[omero@scilifelab.se](mailto:omero@scilifelab.se) and we will either run the
operation or discuss granting your facility the Chown restricted privilege.

Importing into the right group in the first place avoids all of this, which is
why it is worth creating the SUPR project before the session rather than after.

## Metadata a facility should attach

Attach at import, not later. The acquisition parameters a facility knows and the
researcher does not are precisely what makes the dataset usable in a year, and
they are what a journal or repository will ask for. Record them as key-value
pairs, in bulk from a spreadsheet, following OME's
[metadata guide](https://omero-guides.readthedocs.io/en/latest/upload/docs/metadata.html).
Tags applied during import are cheap and make later filtering work; see
[Viewing and annotating](../using-omero/viewing-and-annotating.md) and
[Metadata for publication](../data-management/metadata-for-publication.md).

Nothing you attach may contain personal data, filenames and metadata included.
See [Data you may not upload](../data-management/sensitive-data.md), which
covers the two cases a facility is most likely to hit: the slide label
photographed into a whole-slide image, and the spreadsheet column that comes
along with a bulk annotation.

## Retiring a delivered project

The service is for working with data during a project, not for archiving it, and
it is not backed up.

Your facility's round is not time-limited, so the facility itself faces no
deadline. The projects you create inside it do. Each carries its own allocation,
and when one ends you get a month's notice, after which that project's data is
deleted automatically with no grace period. The deadline is therefore per user
project rather than per facility, and you will be tracking several at once.

Make sure the researcher, and not only the facility, knows the date for their
project. Both of you hold data in the same group, and each side tends to assume
the other has exported it. See
[When your project ends](../data-management/end-of-project.md).
