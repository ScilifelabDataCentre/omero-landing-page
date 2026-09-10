# Supported formats

Which image formats import cleanly, and where the known limits are.

OMERO reads image files through [Bio-Formats](https://www.openmicroscopy.org/bio-formats/),
so the answer to "can I upload this" is the same as "does Bio-Formats read it".
There is nothing SciLifeLab-specific about the format support.

## Bio-Formats coverage

The authoritative list is OME's
[supported formats table](https://bio-formats.readthedocs.io/en/stable/supported-formats.html).
It runs to several hundred formats and covers the output of essentially every
major microscope vendor, along with the common general-purpose formats.

Read the table rather than assuming, because it also records *how well* each
format is read. A format can be listed and still be marked as having poor
metadata support or as being reverse-engineered rather than documented by the
vendor, which is exactly the sort of thing you want to find out before importing
a year of acquisitions.

## Formats we recommend

Import the original vendor files. Bio-Formats reads their acquisition metadata
directly, and converting to TIFF or PNG first throws that metadata away for no
gain.

Where you do need a conversion, or an archival format, prefer OME's own:

- [OME-TIFF](https://ome-model.readthedocs.io/en/stable/ome-tiff/index.html) for
  a single self-describing file, which is also what
  [`omero export`](../clients-and-apis/command-line.md) produces
- [OME-Zarr](https://ngff.openmicroscopy.org/) for very large or pyramidal data

## Known caveats

Multi-file formats are the usual source of confusion. Many vendor formats are a
directory of files with one master file, and you should select the master file
and leave the rest in place, not import the directory contents individually.
OME's
[dataset structure table](https://bio-formats.readthedocs.io/en/stable/formats/dataset-table.html)
lists, format by format, which file to point the importer at.

How much metadata survives varies by format;
[OME's metadata support summary](https://bio-formats.readthedocs.io/en/stable/metadata-summary.html)
is the per-format breakdown.

## Very large images

Whole-slide images and other pyramidal data are supported, and the server
renders them tile by tile so they open in the viewer without downloading. The
practical limit here is not the format but your allocation: the default quota is
100 GB, and a handful of slide scans will use a noticeable fraction of it. See
[storage and quotas in the FAQ](../reference/faq.md).

## What to do with an unsupported format

If Bio-Formats does not list your format, it will not import. Two routes:

- report it to OME through their
  [bug reporting page](https://bio-formats.readthedocs.io/en/stable/about/bug-reporting.html),
  which is how new format support actually gets added
- convert to OME-TIFF or OME-Zarr with whatever tool wrote the file, accepting
  that you will lose some acquisition metadata, and record what matters as
  [key-value pairs](viewing-and-annotating.md) instead

Tell us at [omero@scilifelab.se](mailto:omero@scilifelab.se) either way, so we
know which formats users are hitting.
