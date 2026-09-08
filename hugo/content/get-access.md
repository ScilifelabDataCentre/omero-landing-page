---
title: How to get access
date: 2026-08-19
draft: false
---

SciLifeLab OMERO is open both to the Swedish life science research community and
to SciLifeLab image data producing units supporting user projects. Access is
arranged through a short, guided process, so that each project is set up to fit
its data flow and the support available.

There are two routes into the service, and they start in different places. Find
the one that matches your situation before you write to us.

### Which route applies to you

<div class="row g-4">
<div class="col-md-6">
<div class="scilife-panel">

#### Collaborative research project

For any life science researcher associated with a Swedish university, working alone
or in a collaboration, who needs managed image data support.

Access is granted as a time-limited project allocation through a review-based
track. You apply by submitting a proposal in the
[Swedish User and Project Repository (SUPR)](https://supr.naiss.se), and proposals
are reviewed continuously by SciLifeLab Data Centre according to resource
availability.

**The OMERO round in SUPR is still being set up.** For now, email us and we will
guide you through the proposal.

</div>
</div>
<div class="col-md-6">
<div class="scilife-panel">

#### SciLifeLab data producing unit

For SciLifeLab image data producing infrastructure units that want to handle user
projects through OMERO, for example by collaborating with users and delivering
captured image data through the system.

There is no proposal to submit. Onboarding is aligned with your existing
operational support and project flow.

**Email the OMERO team first** to discuss how your unit would use the service.

</div>
</div>
</div>

### How to request access

#### Researchers: apply for a project via SUPR

1. Write a short description of your project, your imaging workflow, and how you expect to use OMERO.
2. Describe the type of data you want to manage, roughly how much of it there is, and who needs access.
3. Email it to [omero@scilifelab.se](mailto:omero@scilifelab.se). During the current prototype stage, please contact us first and we will guide you through the steps of creating a proposal at SUPR.
4. Submit your proposal in [SUPR](https://supr.naiss.se) once the OMERO round is open.
5. SciLifeLab Data Centre reviews the proposal and, if it is granted, sets up your time-limited allocation and OMERO group.

#### Facilities: get in touch by email

1. Email [omero@scilifelab.se](mailto:omero@scilifelab.se) describing your unit, the imaging workflows you support, and the data you expect to deliver.
2. We discuss together how OMERO would fit your operations, including user projects, data volumes and delivery to users.
3. Onboarding is arranged around your existing operational support, with no proposal step.

### What to include in your request

- Project or research group name
- Institution and department
- Type of imaging data
- Estimated data size and expected growth
- Number of users who need access
- Whether the work is connected to a facility, platform or funded initiative
- Any timing constraints for onboarding

A short, concrete request usually speeds things up. Expected data volume, user
count and research context are normally enough for a first review.

### The request journey

<div class="row g-4">
<div class="col-md-6">

#### Research project

{{< flow direction="horizontal" steps="Prepare a short project description|Email us and we guide you to SUPR|Submit your proposal in SUPR|Proposal reviewed by SciLifeLab Data Centre|Allocation granted and OMERO group set up" >}}

</div>
<div class="col-md-6">

#### Facility

{{< flow direction="horizontal" steps="Email the OMERO team|We discuss workflow and data flow together|Onboarding aligned with your operations|Your unit starts delivering data through OMERO" >}}

</div>
</div>

### What happens next

After your first email we review the request and follow up on the practical
details: scope, storage expectations, who needs access, and when you want to
start. If the allocation is granted, we guide you through setup and help 
you organize your workspace.

Within an active project, image data can be uploaded, organized and annotated
collaboratively in an associated OMERO group. Data in that group is shared only
with project members, as managed by the proposal submitter or project lead. You
can reach it through the web interface, via the API, or directly from many common
image analysis tools, locally or on national compute infrastructures. Analysis
results can be uploaded back and linked to the raw data, and the metadata you
collect supports later publication in public end repositories.

### Before you upload

{{< info_block >}} Important:

- The user is required to ensure that they have the right to upload the image data to SciLifeLab's OMERO instance. 

- Only de-identified data may be uploaded to SciLifeLab's OMERO instance. 

- The user is required to ensure that raw image data uploaded to SciLifeLab's OMERO instance is backed up independently outside of the SciLifeLab OMERO service. 

- SciLifeLab's OMERO instance should be able to handle any image data type supported by recent bioformats versions.

- The user is required to export their data and associated results from the SciLifeLab OMERO instance when the project ends.
{{< /info_block >}}

Not sure whether OMERO fits your project? Ask us at
[omero@scilifelab.se](mailto:omero@scilifelab.se) before you write a full request.

<a class="btn" href="mailto:omero@scilifelab.se" role="button">Email the OMERO team</a>
