# Glossary

OMERO and SciLifeLab terms used throughout this documentation.

OME's own documentation is the authority on the OMERO terms; the
[OMERO guides](https://omero-guides.readthedocs.io/) and the
[OMERO documentation](https://omero.readthedocs.io/en/stable/users/) are where
each of these is described in full.

## OMERO terms

Bio-Formats
:   The library OMERO uses to read image files. Whether OMERO can import your
    data is the same question as whether Bio-Formats reads it. See
    [supported formats](../using-omero/supported-formats.md) and the
    [format list](https://bio-formats.readthedocs.io/en/stable/supported-formats.html).

Blitz gateway
:   The convenience layer over the OMERO Python API, and what most analysis
    scripts use. See [Python API](../clients-and-apis/python-api.md).

`chgrp`
:   The operation that moves data from one group to another, which changes who
    can see it. A member cannot `chgrp` another member's data.
    [OME documentation](https://omero.readthedocs.io/en/stable/users/cli/chgrp.html).

`chown`
:   The operation that changes who owns data, used for instance when someone
    leaves a project.
    [OME documentation](https://omero.readthedocs.io/en/stable/users/cli/chown.html).

Dataset
:   The container that holds images. It sits inside a project and cannot be
    nested. See [Organising your data](../using-omero/organising-data.md).

Download
:   Getting the original file back, byte for byte, in its original format. Not
    the same as export. See [Exporting your data](../data-management/exporting.md).

Export
:   Generating a new file from an image in OMERO, such as a JPEG, TIFF or
    OME-TIFF. Rendered, and not identical to what you imported.

Group
:   The unit of sharing. Data belongs to a group and is visible only to its
    members. See [Groups and membership](../getting-started/groups-and-membership.md).

Group owner
:   A member with the additional right to see and manage the group's membership,
    usually the person who submitted the proposal.

Image
:   One Bio-Formats image, which may itself have many channels, Z planes and
    timepoints. A single image in OMERO is not the same as a single file.

In-place import
:   An import where OMERO points at files where they already sit instead of
    copying them.
    [Not available on this service](../workflows/facility-delivery.md), because
    there is no shared filesystem.

Key-value pair
:   A structured annotation, such as `objective: 63x`. Searchable, and the
    annotation type worth being disciplined about. Also called a map
    annotation. See
    [Viewing and annotating](../using-omero/viewing-and-annotating.md).

OME-TIFF
:   OME's self-describing single-file format. It carries regions of interest and
    tags through an export and reimport, which makes it the format to use when
    moving an image with its metadata.
    [Specification](https://ome-model.readthedocs.io/en/stable/ome-tiff/index.html).

OME-Zarr
:   OME's chunked format for very large and pyramidal images, also known as
    OME-NGFF. [Specification](https://ngff.openmicroscopy.org/).

OMERO.figure, OMERO.iviewer, OMERO.parade
:   Optional web extensions for building figures, viewing images with
    region-of-interest editing, and filtering datasets. See
    [OMERO.web](../clients-and-apis/web-client.md).

OMERO.insight
:   The desktop client, and the usual way to import data. See
    [OMERO.insight](../clients-and-apis/omero-insight.md).

OMERO.web
:   The browser client, at [/webclient/](/webclient/) on this service. It cannot
    import. See [OMERO.web](../clients-and-apis/web-client.md).

OMERO table
:   Tabular data attached to images or wells, typically analysis results or bulk
    metadata loaded from a CSV file. See
    [Metadata for publication](../data-management/metadata-for-publication.md).

Project
:   The top container in the regular hierarchy. Holds datasets, and cannot be
    nested inside another project.

Read-write
:   The group permission level used on this service. Every member can view,
    annotate, edit and delete all data in the group. See
    [Sharing with collaborators](../using-omero/sharing.md) and
    [OME's permissions documentation](https://omero.readthedocs.io/en/stable/sysadmins/server-permissions.html).

Region of interest
:   A shape drawn on an image and stored on it in OMERO, so everyone in the
    group sees it. Often abbreviated ROI.

Rendering settings
:   The contrast limits, channel colours and channel names stored on an image.
    They are server-side, so your group sees what you see.

Restricted administrator
:   A user granted a defined subset of administrator privileges, for instance to
    import data on behalf of others. Relevant to facilities; see
    [Delivering data as a facility](../workflows/facility-delivery.md) and
    [OME's documentation](https://omero.readthedocs.io/en/stable/sysadmins/restricted-admins.html).

Screen, plate, well
:   The separate container hierarchy for high-content screening data. Built by
    the importer from the plate metadata in your files rather than by hand.

Server-side script
:   Code that runs on the OMERO server and appears in the web client's script
    menu, so anyone in the group can run it. Installing one needs an
    administrator. See [Batch operations](../workflows/batch-operations.md).

Session
:   A login held open on the server. The command line and the APIs both keep
    one, and a script that does not close its connections will leak them.

Tag
:   A reusable single label. Its value comes from reusing an existing tag rather
    than typing a new one, because that is what makes filtering work.

## SciLifeLab and allocation terms

Allocation
:   The storage and time granted to your project, 100 GB by default, with a
    duration set when the proposal is reviewed. See the
    [FAQ](faq.md).

Facility
:   A SciLifeLab facility, eligible for the service alongside university
    researchers but onboarded outside the SUPR proposal route. See
    [Delivering data as a facility](../workflows/facility-delivery.md).

Prototype service
:   What SciLifeLab OMERO is. Support is best effort, availability is not
    guaranteed, maintenance can happen without notice, and there are no backups.

Quota
:   The storage limit on your allocation.

SciLifeLab Data Centre
:   The team that operates the service and holds server administrator rights.
    Reachable at [omero@scilifelab.se](mailto:omero@scilifelab.se).

SUPR
:   The Swedish national resource application system, through which researchers
    apply for access. See the [access page](/landing/get-access/).
