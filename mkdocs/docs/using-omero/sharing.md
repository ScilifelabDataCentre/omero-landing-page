# Sharing with collaborators

Who can see your data, and how to change that.

Sharing in OMERO happens through groups. A group is the unit of collaboration,
and data in a group can only be seen by members of that group on the same
server. There is no per-image sharing with an individual, so the question
"who can see this image" is always answered by "the members of the group it is
in".

## Group permission levels

OMERO has four levels, described in OME's
[groups and permissions documentation](https://omero.readthedocs.io/en/stable/sysadmins/server-permissions.html):
private, read-only, read-annotate and read-write.

!!! warning "SciLifeLab OMERO groups are read-write"

    Every member of your group can view, annotate, **edit and delete** all data
    in it, including data you imported. OME's own wording for read-write is that
    members "behave as if they co-own all the data". The only thing a member
    cannot do to someone else's data is move it into another group.

    This is a good fit for a project team that trusts each other. It is a poor
    fit for a group of people who happen to share an allocation but work
    separately. If you need stricter separation, email
    [omero@scilifelab.se](mailto:omero@scilifelab.se).

Because there are no backups, an accidental deletion by any group member is
permanent. Keep your own independent copy of the raw data.

## Adding a collaborator to your group

Group owners can add existing users to their projects in SUPR; after adding 
a new member to a project in SUPR it will automatically apppear in your corresponding group in OMERO. 
OME's [group and user management guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/group-user-management.html)
shows how the web interface and the command line versions of this work.

For SciLifeLab OMERO, please do not add anyone directly to your group in OMERO, but instead add them to your project in SUPR.

__Note: The synchronization between SUPR and OMERO is not instant, so it may take an hour or so for a new member to appear in your group in OMERO.__

## Collaborators outside Sweden

Being outside Sweden is not in itself a barrier to being in your group, but
getting an account is a separate question from being added to a group.

!!! info "Not yet documented"

    How a collaborator without a Swedish university login signs in has not been
    settled. Email [omero@scilifelab.se](mailto:omero@scilifelab.se) before
    promising access to an international collaborator.

## Sharing a link to an image

Every object in OMERO has a stable URL, and OME documents the
[URL patterns](https://help.openmicroscopy.org/urls-to-data.html). Sending one
to a colleague is the normal way to point at a specific image.

A link is not a grant of access. Whoever you send it to still has to log in and
still has to be a member of the group, or they will see nothing. OMERO does
support genuinely public, no-login access to selected data through a
[public user](https://omero.readthedocs.io/en/stable/sysadmins/public.html),
but that is a server-level feature and we have not enabled or documented it
here. Treat SciLifeLab OMERO as login-only.

## What is not shared

- data in your other groups, which stays invisible to this group's members
- data in groups you are not a member of, which you will never see, including in
  [search results](searching.md)
- anything you have not uploaded; the service holds only what is in OMERO
