---
title: How to get access
date: 2026-09-10
draft: false
---

SciLifeLab OMERO is available to life science researchers in Sweden and to
SciLifeLab facilities supporting user projects. For research projects it is free
at the point of use. Access is arranged through a short, guided process, so that
each project is set up to fit its data flow and the support available.

There are two routes into the service, and they start in different places. Find
the one that matches your situation before you write to us.

### Which route applies to you

<div class="row g-4">
<div class="col-md-6">
<div class="scilife-panel">

#### Collaborative research project

For life science researchers in Sweden, working alone or in a collaboration, who
need managed image data support. The principal investigator must be based in
Sweden, but collaborators based abroad can be members of the group.

Access is granted as a time-limited project allocation with limited resources,
applied for through the
[Swedish User and Project Repository (SUPR)](https://supr.naiss.se). Your
proposal is reviewed, and a data management plan is required.

You can apply now through an existing round in SUPR.

</div>
</div>
<div class="col-md-6">
<div class="scilife-panel">

#### SciLifeLab facility

For SciLifeLab facilities that want to handle user projects through OMERO. An
allocation lets a facility upload image data to collaborate with its users, let
those users view and download their data, and transfer data into a user's own
project.

There is no reviewed proposal to submit. Instead we open a SUPR round for your
facility, and you then create a project in it for each of your user projects.
Every project becomes an OMERO group whose membership you administer yourself in
SUPR.

After the pilot phase, the facility covers the associated storage costs.

</div>
</div>
</div>

### How to request access

#### Collaborative research project: apply through SUPR

{{< flow direction="horizontal" >}}
{{< step icon="bi-pencil-square" >}}Prepare a short project description and a data management plan{{< /step >}}
{{< step icon="bi-envelope" >}}[Email us](mailto:omero@scilifelab.se) and we guide you to the right round{{< /step >}}
{{< step icon="bi-send" >}}Register in [SUPR](https://supr.naiss.se) if you have not already, and submit your proposal{{< /step >}}
{{< step icon="bi-clipboard-check" >}}Proposal reviewed by SciLifeLab Data Centre{{< /step >}}
{{< step icon="bi-check-circle" >}}Allocation granted and OMERO group set up{{< /step >}}
{{< /flow >}}

To submit the proposal you need a SUPR account, which you register yourself at
[SUPR](https://supr.naiss.se) using your own university or institution login.
You can add anyone to the project once they have registered for a SUPR account
of their own. Once the project is approved their OMERO account and group
membership are created automatically.
Going to the OMERO web client then sends you to SUPR, which authenticates you
against your own university or institution account, so there is no OMERO password to set.
SUPR accepts both SWAMID and the international eduGAIN federation, which is how
collaborators at universities in other countries use their own institution
login. The [documentation]({{< docs "getting-started/accounts-and-login/" >}}) walks
through the first login, and through the session token that the desktop and API clients use
in place of a username and password.

#### SciLifeLab facility: get in touch by email

{{< flow direction="horizontal" >}}
{{< step icon="bi-envelope" >}}[Email the OMERO team](mailto:omero@scilifelab.se){{< /step >}}
{{< step icon="bi-chat-dots" >}}We discuss workflow and data flow together{{< /step >}}
{{< step icon="bi-box-arrow-in-right" >}}We open a SUPR round for your facility{{< /step >}}
{{< step icon="bi-diagram-3" >}}You create a project per user project and add its members{{< /step >}}
{{< step icon="bi-cloud-upload" >}}Your facility starts delivering data through OMERO{{< /step >}}
{{< /flow >}}

### What an allocation includes

- Free at the point of use for research projects. Facilities cover their own
  storage costs after the pilot phase.
- 100 GB of storage by default, shared by everyone in the group rather than
  allotted per person. More space is requested as a new proposal in SUPR,
  explaining why the project needs it.
- A duration set case by case, which you can ask in SUPR to renew or extend
- No limit on the number of people in your group

SciLifeLab Data Centre reviews proposals on scientific merit, expected impact,
and whether the project fits the conditions on this page. You can normally
expect a decision within a week of a complete request.

### What to include in your request

- Project or research group name
- Institution and department
- Type of imaging data
- Estimated data size and expected growth
- Number of users who need access
- Whether the work is connected to a facility, platform or funded initiative
- Any timing constraints for onboarding

A short, concrete request usually speeds things up. A data management plan is
also required for a research project, and goes into the proposal you submit in
SUPR rather than into this first email.

### What happens next

After your first email we follow up on the practical details: scope, storage
expectations, who needs access, and when you want to start. Your OMERO group is
shared only with your project members, and who those are is administered through
your project in SUPR rather than inside OMERO. Adding someone to the project in
SUPR adds them to the OMERO group automatically within one hour at most.

### When your project ends

You get one month of notice by email before an allocation ends. After that your
account is disabled and the data is deleted automatically, with no grace period,
so export everything you need before the deadline. If you need more time,
request a renewal or an extension by submitting a new proposal in SUPR 
while the notice period is still running.

### Before you upload

SciLifeLab OMERO reads the image formats supported by recent
[Bio-Formats](https://www.openmicroscopy.org/bio-formats/) releases. See
[supported formats]({{< docs "using-omero/supported-formats/" >}}) for the details and
the known caveats.

{{< info_block >}} Important:

- You must have the right to upload the image data to SciLifeLab's OMERO instance.

- You must not upload personal data of any kind. This applies to image content, filenames and metadata alike.

- You must keep an independent backup of your raw image data, outside the SciLifeLab OMERO service.

- You must export your data and associated results before your project ends.
{{< /info_block >}}

Not sure whether OMERO fits your project?
[Get in touch]({{< relref "contact" >}}) before you write a full request.

<a class="btn" href="mailto:omero@scilifelab.se" role="button">Email the OMERO team</a>
