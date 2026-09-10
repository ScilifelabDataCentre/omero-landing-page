# Organising your data

How projects, datasets, screens and plates fit together, and conventions worth
adopting early.

OMERO's containers are fixed and shallow, so the structure is quick to learn but
you cannot nest your way out of a bad start. OME's
[data management guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/data-management.html)
walks through the whole model with screenshots.

## Projects, datasets and images

Three levels, and no more:

- an **image** is one Bio-Formats image, which may itself be multi-channel,
  multi-plane and multi-timepoint
- a **dataset** holds images
- a **project** holds datasets

An image can sit in several datasets at once, and a dataset in several projects,
because the links are references rather than a filesystem tree. Removing an
image from one dataset therefore does not delete it. There is no level below
dataset, so if you want a deeper hierarchy, use tags and key-value pairs instead
of trying to build one out of containers.

## Screens, plates and wells

High-content screening data uses a separate branch of the model: a **screen**
holds **plates**, a plate holds **wells**, and a well holds one or more images.
This is created by the importer from the plate metadata in your files rather
than by you, so import screening data as screening data and let OMERO lay it
out.

## Naming conventions

OMERO will not enforce any, and search is only as good as what you type, so
agree on something with your group before the first import. A name that carries
the date, the sample and the acquisition condition will still make sense to
someone joining the project a year later; `Experiment_final_2` will not.

## Tags and key-value pairs

These are how you record everything the container hierarchy cannot. Tags are
single labels you can reuse and filter on; key-value pairs record structured
facts such as `strain: BL21` or `objective: 63x`. Both are searchable. See
[Viewing and annotating](viewing-and-annotating.md) for how to add them and
[Searching](searching.md) for what they buy you.

## Moving and copying between containers

Within a group, drag and drop in the web client or OMERO.insight. Between
groups, OMERO has a dedicated operation, `chgrp`, because moving data across a
group boundary changes who can see it. The
[data management guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/data-management.html)
covers moving data between groups and changing the ownership of data, and
[`omero chgrp`](../clients-and-apis/command-line.md) does the same from a
script.

!!! info "Group members can reorganise each other's data"

    SciLifeLab OMERO groups are read-write, so anyone in your group can move,
    edit and delete data belonging to anyone else in it. See
    [Sharing with collaborators](sharing.md).
