---
title: "About"
description: "SciLifeLab OMERO is a prototype service for collaborative bioimage data management, built on the open-source OMERO platform and hosted by SciLifeLab Data Centre."
date: 2026-09-10
draft: false
---

SciLifeLab OMERO is a prototype bioimage data management service for life science
researchers in Sweden and for SciLifeLab facilities. It is a shared place to
store, organize, view, annotate and share microscopy and other image data
together with the people you work with. It is built on
[OMERO](https://www.openmicroscopy.org/omero/), the established open-source
platform for image data, and hosted by
[SciLifeLab Data Centre](https://www.scilifelab.se/data/).

The service gives you access-controlled storage for the active stages of a
research project. It is a place to work with your image data, not a backup or a
long-term archive — you keep your own copy of the raw data throughout, and
export your data and results when the project ends.

### What you can do

{{< cards >}}
{{< card icon="bi-cloud-upload" title="Upload and organize" docs="using-omero/uploading/" >}}
Bring microscopy and other image data into your OMERO project group and keep it structured.
{{< /card >}}
{{< card icon="bi-eye" title="View and annotate" docs="using-omero/viewing-and-annotating/" >}}
Visualize and annotate image data together with your project members.
{{< /card >}}
{{< card icon="bi-diagram-3" title="Reach it from your tools" docs="clients-and-apis/web-client/" >}}
Work in a web browser, or connect from OMERO.insight, Fiji, napari, the omero command line or the Python API.
{{< /card >}}
{{< card icon="bi-cpu" title="Work locally or on HPC" docs="workflows/hpc/" >}}
Reach the same data from your own machine or from a compute cluster through the OMERO API.
{{< /card >}}
{{< card icon="bi-people" title="Share under your control" docs="using-omero/sharing/" >}}
Share with your project members, and control who they are through your project in SUPR.
{{< /card >}}
{{< card icon="bi-journal-text" title="Ready for publication" docs="data-management/metadata-for-publication/" >}}
Add metadata as you go, so a dataset is still traceable and intelligible when you come to publish it.
{{< /card >}}
{{< /cards >}}

Submitting a dataset to a public image data repository is a manual step for now.
There is no direct route from the service into those repositories yet.

### Who it is for

- **Life science research groups in Sweden** producing or using microscopy and other image
  data who need something more robust than local drives and file-by-file sharing
- **SciLifeLab facilities**, to run user projects and deliver captured data

Collaborators based outside Sweden can be members of a group, as long as the
principal investigator is based in Sweden. Sign-in uses your own university or
institution account: SUPR handles the authentication and accepts both SWAMID and
the international eduGAIN federation.

{{< info_block >}} Good to know:

- For research projects the service is free at the point of use. Facilities cover their own storage costs after the pilot phase. It is a prototype, so access is arranged in a guided way to match your project and the support available.

- Your data is stored in Sweden, at Chalmers e-Commons in Gothenburg and at SciLifeLab Data Centre in Stockholm.

- Availability is best effort and there is no uptime target. Planned maintenance, outages and server upgrades are announced by email.
{{< /info_block >}}

<a class="btn" href="{{< relref "get-access" >}}" role="button">Get access</a>
<a class="btn" href="{{< docs >}}" role="button">Read the documentation</a>
<a class="btn scilife-external-btn" href="/webclient/" role="button">Log in to SciLifeLab OMERO</a>
