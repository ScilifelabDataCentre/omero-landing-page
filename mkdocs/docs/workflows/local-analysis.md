# Analysing data on your own machine

Pulling images out of OMERO for local analysis, and putting results back.

Most analysis tools can read from OMERO directly, so the download-analyse-reupload
cycle is usually avoidable. OME maintains guides for six of them under
[External software and OMERO](https://omero-guides.readthedocs.io/en/latest/external_tools.html):

- [Fiji](https://omero-guides.readthedocs.io/en/latest/fiji/docs/index.html), the
  most commonly used route, covered on our
  [Fiji and ImageJ](../clients-and-apis/fiji-imagej.md) page
- [CellProfiler](https://omero-guides.readthedocs.io/en/latest/cellprofiler/docs/index.html)
  for quantitative pipelines
- [ilastik](https://omero-guides.readthedocs.io/en/latest/ilastik/docs/index.html)
  for interactive segmentation and classification
- [QuPath](https://omero-guides.readthedocs.io/en/latest/qupath/docs/index.html)
  for whole-slide and digital pathology work
- [Orbit](https://omero-guides.readthedocs.io/en/latest/orbit/docs/index.html)
  for quantification of very large images
- [TrackMate](https://omero-guides.readthedocs.io/en/latest/trackmate/docs/index.html)
  for single-particle tracking

If your tool is not on that list, reach the data through an API instead:
[Python](../clients-and-apis/python-api.md), or the Java, MATLAB and R libraries
listed under
[OMERO APIs](https://omero-guides.readthedocs.io/en/latest/api_usage.html).

## Deciding what to pull down

Prefer not to. Reading through the API or a tool's OMERO connector means you
work against the same data everyone else in the group sees, and you avoid
keeping a second copy in step. Download when you genuinely need the file itself:
an offline machine, a tool with no OMERO support, or a submission to a
repository.

## Fetching images

Through a tool's own OMERO connector, following the relevant guide above; from
Python with the Blitz gateway; or as files, which is
[Exporting your data](../data-management/exporting.md).

## Returning results and annotations

This is the part worth doing properly, because a result that stays on your
laptop is invisible to your collaborators. You can write back:

- measurement tables and result files, as attachments on the image or dataset
- regions of interest, which then show in the OMERO viewer for everyone
- key-value pairs recording the analysis parameters you used

OME's
[annotation guide](https://omero-guides.readthedocs.io/en/latest/introduction/docs/annotate.html)
covers doing this by hand and the tool guides cover doing it from a script.

## Keeping local copies in step with the server

OMERO does not synchronise anything, and there is no mechanism that will tell
you a local copy has gone stale. If you must keep one, record which OMERO image
IDs it came from and when, so the provenance survives. This is another reason to
read through the API where you can.

## If the analysis is too big for your machine

See [Working from an HPC system](hpc.md), and note the constraint described
there: there is no shared filesystem, so a cluster reaches the service over the
same API you would use locally.
