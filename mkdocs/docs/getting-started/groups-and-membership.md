# Groups and membership

How an OMERO group maps to your project, and who can change what.

The group is the only unit of sharing OMERO has, so almost every question about
who can see or change something reduces to a question about groups. OME's
[group and user management guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/group-user-management.html)
shows the administration side, and their
[groups and permissions documentation](https://omero.readthedocs.io/en/stable/sysadmins/server-permissions.html)
sets out the model.

## What a group is

A container for people and data. Everything you import is owned by you and
belongs to whichever group you were logged into at the time, and it can only be
seen by members of that group on this server. Data is not shared with an
individual, and there is no sharing across servers.

On SciLifeLab OMERO a group normally corresponds to one project and its
allocation, so the people in your group are the people on your project.

## Roles in your group

OMERO recognises three roles, but this service uses only two of them:

- a **group member** is the standard user, and on SciLifeLab OMERO everyone in
  your group is one
- a **server administrator** controls everything, including creating users and
  groups. On this service that is the SciLifeLab Data Centre, not anyone in your
  group.

OMERO also defines a **group owner**, a member who can manage the group's
membership from inside OMERO. SciLifeLab OMERO does not use it. Nobody in your
group holds it, not even the person who submitted the proposal, so no one can
administer the group from within OMERO itself. Membership is administered in
SUPR instead, and everything else that needs elevated rights goes through us.

You will still meet the term in OME's documentation, where group owners are
assumed to exist.

## What members can do to each other's data

!!! warning "Groups here are read-write"

    Every member can view, annotate, edit and **delete** all data in the group,
    including data someone else imported. There are no backups, so a deletion is
    permanent.

    Two things no member can do, because both need rights nobody in the group
    has: move another member's data into a different group, and change who owns
    any data, their own included. Ask
    [omero@scilifelab.se](mailto:omero@scilifelab.se) for either.

    [Sharing with collaborators](../using-omero/sharing.md) explains the four
    permission levels OMERO offers and what to do if read-write is not the right
    fit for your project.

## Requesting a change to membership

Where the allocation is administered through SUPR, which covers every research
project and any facility that has opted into it, membership is managed in SUPR
and synchronised to OMERO. Add or remove someone from the project in SUPR and
the change reaches your OMERO group on its own, usually within an hour. Do not
add or remove people directly in OMERO.

If your facility is not administered through SUPR, email
[omero@scilifelab.se](mailto:omero@scilifelab.se) instead. Creating a new user
account always goes through us either way. See
[Sharing with collaborators](../using-omero/sharing.md).

## Belonging to more than one group

You can be in several groups, and you are logged into exactly one at a time. The
group you are in when you import decides where the data lands, which is the
usual cause of "I imported it and it disappeared". Switch group in the web
client's menu, or with `omero login -g` from the
[command line](../clients-and-apis/command-line.md).

Moving data you have already imported into the right group is a `chgrp`
operation; see [Organising your data](../using-omero/organising-data.md).
