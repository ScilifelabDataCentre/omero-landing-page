# Delivering data as a facility

How a SciLifeLab facility hands captured data to the researchers it works with.

OME has written a walkthrough for exactly this role,
[OMERO walkthrough for facility managers](https://omero-guides.readthedocs.io/en/latest/example_facility_manager.html),
which threads together importing on behalf of others, administering groups and
users, and getting new users started. Read that first; this page records what is
different on SciLifeLab OMERO.

## How a facility group is set up

Facilities are eligible for the service alongside life science researchers in
Sweden, and there is no reviewed proposal to submit. Your allocation and its
membership can still be administered through SUPR if you prefer, the same way a
research project's is; that is the facility's choice rather than a requirement.
Email [omero@scilifelab.se](mailto:omero@scilifelab.se) to discuss how your
facility should be set up, and see the [access page](/landing/get-access/).

An allocation covers three things: uploading image data so you can collaborate
with your users, letting those users view and download their data, and
transferring data into a user's own project, for instance one granted through
the reviewed research track.

After the pilot phase, your facility covers the storage costs associated with
the allocation.

Groups on this service are read-write, which means every member can edit and
delete every other member's data. That matters more for a facility than for a
single project team, so think about whether you want one group per client
project rather than one group holding several. See
[Sharing with collaborators](../using-omero/sharing.md).

## Importing captured data

Importing data *for yourself* and then handing it over needs no special rights.
Importing data *directly as another user* does: OMERO calls this restricted
administrator privilege, documented under
[administrators with restricted privileges](https://omero.readthedocs.io/en/stable/sysadmins/restricted-admins.html).
OME's walkthrough covers both the desktop and command line versions.

!!! info "Restricted admin rights are granted by us"

    Only a server administrator can grant them, so tell
    [omero@scilifelab.se](mailto:omero@scilifelab.se) if importing as another
    user is part of your delivery workflow. Without it you import as yourself,
    and you stay the owner: transferring ownership afterwards is not something a
    facility can do on its own either. See
    [Handing data to a user group](#handing-data-to-a-user-group).

For volume, use bulk import rather than the wizard; see
[Batch operations](batch-operations.md).

!!! warning "In-place import is not available"

    OME's walkthrough describes
    [in-place import](https://omero.readthedocs.io/en/stable/sysadmins/in-place-import.html),
    where OMERO points at files where they already sit instead of copying them.
    That requires the server to see your acquisition storage, and SciLifeLab
    OMERO has no shared filesystem with any other system. Imports here always
    copy the data in. See [Working from an HPC system](hpc.md).

## Letting users view and download without handing over

The other delivery pattern is to keep the data in the facility's group and add
the researcher to that group, so they can view and download it while the
facility stays the owner. It avoids the transfer entirely, and it is the right
shape when the facility needs to keep the data for its own reference.

!!! warning "Users you add can also delete"

    Every group on this service is read-write, so a user added so they can view
    and download data can also edit and delete it, including data belonging to
    the facility. OMERO's read-only and read-annotate levels would express this
    properly, but whether a group can be provisioned at one of those levels here
    is not settled. Ask [omero@scilifelab.se](mailto:omero@scilifelab.se) before
    adding users for read access alone.

Until that is resolved, the one-group-per-client-project arrangement described
above matters more than it otherwise would, because it limits a mistake to a
single client's data.

## Handing data to a user group

Two operations do the work, and both are covered in OME's
[data management guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/data-management.html):

- `chgrp` moves data into the client's group, which changes who can see it
- `chown` changes the owner, so the researcher rather than the facility owns it

On this service you can do the first and not the second. OME documents who may
run each, and the deciding factor is the group-owner role, which
[nobody here holds](../getting-started/groups-and-membership.md):

- [`omero chgrp`](https://omero.readthedocs.io/en/stable/users/cli/chgrp.html)
  is available to the owner of the data if they are a member of the target
  group. A facility can therefore move data it imported itself, but only once
  its own account has been added to the destination group.
- [`omero chown`](https://omero.readthedocs.io/en/stable/users/cli/chown.html)
  needs a full administrator, a restricted administrator with the Chown
  privilege, or a group owner. A facility has none of these, so it cannot make
  the researcher the owner.

!!! warning "Agree a handover route with us first"

    Because ownership cannot be transferred by a facility, there is no complete
    self-service handover today. Email
    [omero@scilifelab.se](mailto:omero@scilifelab.se) before you plan a delivery
    workflow around it. We can either run the operations for you or grant your
    facility the Chgrp and Chown restricted privileges described above; which of
    those we offer is not settled yet.

    Moving data without transferring ownership is a workable interim step: the
    researcher sees the data in their group, and the facility remains its owner.

Group membership itself is administered as described in OME's
[group and user management guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/group-user-management.html),
but on this service it happens in SUPR, and creating users and groups goes
through [omero@scilifelab.se](mailto:omero@scilifelab.se).

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

## Retiring a delivered project

The service is for working with data during a project, not for archiving it, and
it is not backed up. When an allocation ends you get one month of notice, after
which the data is deleted automatically with no grace period. Make sure the
researcher, and not only the facility, knows that deadline. See
[When your project ends](../data-management/end-of-project.md).
