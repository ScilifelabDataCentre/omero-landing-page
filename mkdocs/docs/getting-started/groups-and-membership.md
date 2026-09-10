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

## Group owners and members

OMERO recognises three roles:

- a **group member** is the standard user
- a **group owner** can additionally see and manage who is in the group, and can
  add existing users to it. This is usually the person who submitted the
  proposal, or the principal investigator.
- a **server administrator** controls everything, including creating users and
  groups. On this service that is the SciLifeLab Data Centre, not anyone in your
  group.

## What members can do to each other's data

!!! warning "Groups here are read-write"

    Every member can view, annotate, edit and **delete** all data in the group,
    including data someone else imported. The only thing a member cannot do to
    another member's data is move it into a different group. There are no
    backups, so a deletion is permanent.

    [Sharing with collaborators](../using-omero/sharing.md) explains the four
    permission levels OMERO offers and what to do if read-write is not the right
    fit for your project.

## Requesting a change to membership

You can always delete a member from the project in SUPR, our synchronization will 
take care of the rest and that member will be removed from your group in OMERO.

## Belonging to more than one group

You can be in several groups, and you are logged into exactly one at a time. The
group you are in when you import decides where the data lands, which is the
usual cause of "I imported it and it disappeared". Switch group in the web
client's menu, or with `omero login -g` from the
[command line](../clients-and-apis/command-line.md).

Moving data you have already imported into the right group is a `chgrp`
operation; see [Organising your data](../using-omero/organising-data.md).
