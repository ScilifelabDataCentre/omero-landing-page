# napari

Viewing SciLifeLab OMERO images in napari.

[napari-omero](https://github.com/ome/napari-omero) adds an OMERO browser to
[napari](https://napari.org/), so you can page through a group's images and open
them as napari layers. Planes load on demand as you move the sliders, and
pyramidal images such as whole-slide scans load as napari multiscale layers, so
you are not waiting for a whole image to download before you can look at it.

## Installing

The plugin is published on
[PyPI](https://pypi.org/project/napari-omero/) and conda-forge:

```bash
pip install napari-omero
```

It pulls in `omero-py`, which is the same library the [Python API](python-api.md)
page covers. If the install gives you trouble, that page points at OME's
setup instructions, which deal with the awkward parts.

Launch napari with the browser already attached:

```bash
napari-omero
```

You can also add the widget from napari's Plugins menu in a normal `napari`
session.

## Connecting to SciLifeLab OMERO

The login dialog takes the usual settings:

- Server address: `omero.scilifelab.se`
- Port: `4064`
- Username and password: the same ones you use for the
  [web client](/webclient/)

The plugin remembers the session, so you are not asked again every time.

## What you can move in each direction

Reading from OMERO, you get images with their OMERO rendering settings applied
(contrast limits, colormaps, active channels), and regions of interest as napari
`Shapes` or `Points` layers. Writing back, you can upload napari `Labels`,
`Shapes` and `Points` layers to the image in OMERO.

## Known limitations

napari-omero lives in OME's GitHub organisation but is not one of the core OMERO
clients, and there is no page for it in the
[OMERO guides](https://omero-guides.readthedocs.io/). The
[README](https://github.com/ome/napari-omero) is the reference, and its issue
tracker is the place to report problems with the plugin itself rather than
[omero@scilifelab.se](mailto:omero@scilifelab.se).

For large multiscale images the README recommends turning on napari's
experimental asynchronous rendering, under
`Preferences > Experimental > Render Images Asynchronously`.
