# Fiji and ImageJ

Opening and saving SciLifeLab OMERO images from Fiji.

Fiji can read images straight out of OMERO and write results back, so you do not
have to download files, analyse them locally and re-upload. OME maintains a full
[Fiji guide](https://omero-guides.readthedocs.io/en/latest/fiji/docs/index.html)
covering everything on this page in detail.

## Installing the OMERO plugin

Follow OME's
[installation instructions](https://omero-guides.readthedocs.io/en/latest/fiji/docs/installation.html).
The plugin is distributed through a Fiji update site, so it installs and updates
from inside Fiji itself.

## Connecting to SciLifeLab OMERO

The plugin asks for the same connection settings as the desktop client:

- Server address: `omero.scilifelab.se`
- Port: `4064`
- Username and password: the same ones you use for the
  [web client](/webclient/)

## Opening images and saving results

OME's
[manual analysis walkthrough](https://omero-guides.readthedocs.io/en/latest/fiji/docs/manual_analysis.html)
goes from opening an image through to writing the measurements back to OMERO as
an attachment. Regions of interest drawn in Fiji can be saved to the image in
OMERO, so they are visible to everyone else in your group.

## Scripting

Two routes, both documented upstream:

- the
  [ImageJ macro language](https://omero-guides.readthedocs.io/en/latest/fiji/docs/threshold_scripting_macro_language.html),
  if you are already writing macros
- [Jython scripting inside Fiji](https://omero-guides.readthedocs.io/en/latest/fiji/docs/imagej_python.html),
  which gives you the OMERO Java API from Python syntax

If you would rather script against OMERO directly than through Fiji, see the
[Python API](python-api.md).

## Other analysis tools

Fiji is one of six tools OME publishes OMERO guides for. See
[Analysis on your own machine](../workflows/local-analysis.md).
