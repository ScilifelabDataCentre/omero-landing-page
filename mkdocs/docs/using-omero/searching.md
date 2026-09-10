# Searching

Finding images across the groups you belong to.

OMERO indexes names, descriptions and annotations, so search finds images by
what you recorded about them rather than only by filename. OME's
[search guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/search-omero.html)
covers the query syntax and has worked examples.

## Basic search

The search box in the [web client](/webclient/) queries names, descriptions and
annotations at once. Results are grouped by object type, so a term that matches
a project, a dataset and thirty images shows you all three.

## Searching by tag and key-value pair

You can restrict a query to a particular field, which is how you go from "images
mentioning BL21 somewhere" to "images whose `strain` key is `BL21`". The
[advanced search section](https://omero-guides.readthedocs.io/en/latest/introduction/docs/search-omero.html)
of OME's guide has the syntax.

Filtering is often the better tool for a container you are already looking at:
open a dataset and filter it by tag or rating instead of searching the whole
server. OME's
[annotation guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/annotate.html)
covers filtering by annotation.

## Scoping a search to a group or container

Search runs across the groups you belong to, and you can narrow it to the
current group or to a chosen project or dataset. You will never see data from a
group you are not a member of, whatever you search for.

## Why annotation habits make search work

Search cannot find a fact nobody recorded. A group that reuses a small set of
tags and a consistent set of keys can find anything in it a year later; a group
that types a new tag each time cannot. This is the practical argument for the
conventions in [Organising your data](organising-data.md), and it is worth
settling before the first large import rather than after.

If you need to annotate a large amount of existing data to make it findable, do
it in bulk rather than by hand. See
[Batch operations](../workflows/batch-operations.md).
