# First steps

Finding your way around OMERO.web after you sign in for the first time.

If you would rather follow a worked example than read reference pages, OME's
[OMERO walkthrough example](https://omero-guides.readthedocs.io/en/latest/example.html)
takes a scientist from importing data through viewing it, analysing it in Fiji
and building a figure. It is the best single introduction to OMERO there is.

## The web client at a glance

Sign in at [/webclient/](/webclient/). The layout is three panes: a tree of your
projects and datasets on the left, thumbnails in the middle, and details and
annotations for whatever you have selected on the right. The group selector is
in the top bar, and it matters more than it looks like it does.

[OMERO.web](../clients-and-apis/web-client.md) covers what the browser client
can and cannot do.

## Your group and where your data lives

You are always logged into exactly one group, and everything you import belongs
to that group. If you belong to more than one, check the selector before
importing. See [Groups and membership](groups-and-membership.md).

Two things about your group are worth knowing on day one: everyone in it can
edit and delete your data, and none of it is backed up. Keep your own copy of
the raw data.

## Uploading a first image

Not from the browser, which has no import route. Install
[OMERO.insight](../clients-and-apis/omero-insight.md) and use its import wizard,
or use `omero import` from the
[command line](../clients-and-apis/command-line.md). Connect to
`omero.scilifelab.se` on port `4064` with the same username and password.

Before you import anything real, read
[Organising your data](../using-omero/organising-data.md), because deciding on
your project and dataset structure now is much less work than reorganising a
thousand images later. Then [Uploading data](../using-omero/uploading.md).

!!! warning "No personal data"

    Nothing you upload may contain personal data, and that includes filenames
    and metadata as well as image content. See the
    [access page](/landing/get-access/).

## Choosing between the web client and a desktop client

Use the browser for looking at data, annotating it and searching. Use
OMERO.insight for importing, and for anything the browser cannot do. Most people
end up with both. If your work is analysis, add
[Fiji](../clients-and-apis/fiji-imagej.md) or the
[Python API](../clients-and-apis/python-api.md) and read images straight from
the server rather than downloading them.

## Where to go next

- [Organising your data](../using-omero/organising-data.md) and
  [Uploading data](../using-omero/uploading.md)
- [Viewing and annotating](../using-omero/viewing-and-annotating.md), then
  [Searching](../using-omero/searching.md), which only works as well as your
  annotations do
- [When your project ends](../data-management/end-of-project.md), worth reading
  early rather than late
- [Frequently asked questions](../reference/faq.md) and
  [Getting help](../support.md)
