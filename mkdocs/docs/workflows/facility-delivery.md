# Delivering data as a facility

How a SciLifeLab facility hands captured data to the researchers it works with.

OME has written a walkthrough for exactly this role,
[OMERO walkthrough for facility managers](https://omero-guides.readthedocs.io/en/latest/example_facility_manager.html),
which threads together importing on behalf of others, administering groups and
users, and getting new users started. Read that first; this page records what is
different on SciLifeLab OMERO.

## How a facility group is set up

Facilities are eligible for the service alongside Swedish university
researchers, but the facility route does not go through a SUPR proposal. Email
[omero@scilifelab.se](mailto:omero@scilifelab.se) to discuss how your facility
should be set up, and see the [access page](/landing/get-access/).

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
    user is part of your delivery workflow. Without it, import as yourself and
    transfer ownership afterwards.

For volume, use bulk import rather than the wizard; see
[Batch operations](batch-operations.md).

!!! warning "In-place import is not available"

    OME's walkthrough describes
    [in-place import](https://omero.readthedocs.io/en/stable/sysadmins/in-place-import.html),
    where OMERO points at files where they already sit instead of copying them.
    That requires the server to see your acquisition storage, and SciLifeLab
    OMERO has no shared filesystem with any other system. Imports here always
    copy the data in. See [Working from an HPC system](hpc.md).

## Handing data to a user group

Two operations do the work, and both are covered in OME's
[data management guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/data-management.html):

- `chgrp` moves data into the client's group, which changes who can see it
- `chown` changes the owner, so the researcher rather than the facility owns it

[`omero chgrp`](../clients-and-apis/command-line.md) and `omero chown` are the
scriptable versions. Note that a group member cannot move another member's data
out of a group, so ordering matters: transfer ownership after the move, not
before.

Group membership itself is administered as described in OME's
[group and user management guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/group-user-management.html),
but creating users and groups on this service goes through
[omero@scilifelab.se](mailto:omero@scilifelab.se).

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
