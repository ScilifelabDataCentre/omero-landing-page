# Viewing and annotating

Using the image viewer, and recording what you know about an image alongside it.

The point of annotating in OMERO rather than in a spreadsheet is that the
annotation travels with the image, is visible to everyone in your group, and is
searchable. OME's
[annotation guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/annotate.html)
is the step-by-step version of this page.

## The image viewer

Open an image from the [web client](/webclient/) and you get channel toggles, Z
and time sliders, and a histogram. Nothing is downloaded to your machine; the
server renders what you are looking at, so a whole-slide image opens as quickly
as a small one.

## Rendering settings

Contrast limits, per-channel colours and channel names are stored on the image
in OMERO, not just in your session, so everyone in your group sees the same
thing and so exported figures match what you saw. OME's
[rendering guide](https://omero-guides.readthedocs.io/en/latest/upload/docs/render.html)
covers copying one image's settings across a whole dataset, which is what you
want when comparing a series.

## Regions of interest

The base web client shows regions of interest that already exist on an image.
Drawing new ones needs either [OMERO.iviewer](../clients-and-apis/web-client.md),
[OMERO.insight](../clients-and-apis/omero-insight.md), or
[Fiji](../clients-and-apis/fiji-imagej.md), which can save regions drawn during
an analysis straight back to the image.

## Tags, comments and ratings

Tags are reusable single labels, and the value of reusing an existing tag rather
than typing a new one is that filtering then works. Comments are free text for
things a tag cannot capture, and ratings are a one-to-five score, useful for
marking which images in a series are worth analysing.

## Key-value pairs

Key-value pairs record structured facts about an image: `strain: BL21`,
`objective: 63x`, `treatment: none`. They are the annotation type worth being
disciplined about, because they are what makes a dataset intelligible to someone
else later and what a public repository will ask you for. See
[Metadata for publication](../data-management/metadata-for-publication.md), and
OME's
[metadata guide](https://omero-guides.readthedocs.io/en/latest/upload/docs/metadata.html)
for adding them in bulk from a spreadsheet rather than one image at a time.

!!! warning "Annotations are data too"

    Tags, comments, key-value pairs and filenames are all covered by the rule
    that no personal data may go into the service. See the
    [access page](/landing/get-access/).
