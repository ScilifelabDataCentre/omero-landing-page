# Frequently asked questions

Short answers, with links to the longer version where there is one.

## Access and accounts

### Who can use SciLifeLab OMERO?

Life science researchers in Sweden, and SciLifeLab facilities running user
projects.

### Does it cost anything?

For a research project, no: it is free at the point of use.

For a SciLifeLab facility, not during the pilot phase. After that the facility
covers the storage costs associated with its allocation.

### Can collaborators outside Sweden take part?

Yes, they can be members of your group. The principal investigator has to be
based in Sweden. SUPR handles the authentication and accepts eduGAIN as well as
SWAMID, so an account at a university outside Sweden normally works directly.
Ask us first if your collaborator is somewhere outside those federations.

### How do I apply?

Through a round in the Swedish User and Project Repository (SUPR). Email us and we
will point you at the right one. The full process is on
[How to get access](/landing/get-access/).

### Do I need a data management plan?

Yes, for a research project. The plan goes into the proposal you submit in SUPR.
Facilities are not asked for one.

### How long does a decision take?

Usually about a week from a complete request. SciLifeLab Data Centre reviews
proposals on scientific merit, expected impact, and whether the project fits the
conditions of the service.

### How do I log in?

You need a SUPR account and you register it yourself at
[SUPR](https://supr.naiss.se) with your institution login; if you submitted the
proposal you already have one, since that is where you submitted it. Your OMERO
account is created for you once you are in an approved project. Go to the
[OMERO web client](/webclient/) and it sends you to SUPR, which authenticates
you against your own university or institution account. There is no OMERO
password.
The desktop and API clients cannot do single sign-on, so they reuse that session:
copy the session token from the web client and give it as both the username and
the password. See
[Accounts and login](../getting-started/accounts-and-login.md).

### How many people can be in my group?

There is no limit.

## Storage and quotas

### How much storage do I get?

100 GB by default. The quota belongs to the project, so everyone in the group
draws on the same 100 GB. There is no fixed maximum; a larger allocation is
reviewed case by case. See [Quotas and limits](quotas-and-limits.md).

### How do I see how much I have used?

You cannot, yet. OMERO.web does not show the group's consumption, so email
[omero@scilifelab.se](mailto:omero@scilifelab.se) and we will tell you.

### What happens if I run out of space?

Imports fail with an error and there is no margin, so a bulk import can stop
partway. You are emailed when the limit is reached. More space is requested as a
new proposal in SUPR explaining why the project needs it.

### How long does an allocation last?

The duration is set case by case when your proposal is reviewed, and you can
request a renewal or extension in SUPR. A facility's round is not time-limited,
but each project a facility creates inside it is.

### Where is my data stored?

In Sweden, at Chalmers e-Commons in Gothenburg and at SciLifeLab Data Centre in
Stockholm.

### Is my data backed up?

No. SciLifeLab OMERO is a place to work with image data during a project, not a
backup or a long-term archive. Keep your own independent copy of the raw data.

## Data and formats

### Which image formats can I upload?

Those supported by recent Bio-Formats releases. See
[supported formats](../using-omero/supported-formats.md).

### Can I upload data from human subjects?

No personal data of any kind may be uploaded, and that applies to image content,
filenames and metadata alike. Pseudonymised data counts as personal data under
the GDPR, so it is excluded too. See
[data you may not upload](../data-management/sensitive-data.md).

### Can I publish straight to a public image data repository?

Not yet. There is no direct route from the service into those repositories, so
export your data and submit it yourself for now. Support for this is planned.

## Working with your data

### Which clients can I use?

OMERO.web in a browser, OMERO.insight, Fiji, napari, `omero-py` and the `omero`
command line interface.

### Can I work from an HPC cluster?

Through the OMERO API, yes. The service is not mounted on any HPC system and there
is no dedicated transfer route, so the compute nodes need outbound network access
to reach the server, and a cluster that isolates them cannot use the service. We
have not tested a specific Swedish system. See
[working from an HPC system](../workflows/hpc.md).

## Ending a project

### What happens when my allocation ends?

You get one month of notice by email, after which your account is disabled and
the data is deleted automatically. There is no grace period, so export
everything you need before the deadline. Logs and audit records are retained
after the data goes. See
[when your project ends](../data-management/end-of-project.md).

### Can I get more time?

Request a renewal or an extension in SUPR while the notice period is still
running. The cut-off is the end of those thirty days.

## The service itself

### Is there an uptime guarantee?

No. SciLifeLab OMERO is a prototype. Availability is best effort and there is no
uptime target or status page. See
[service status and availability](service-status.md).

### How will I hear about maintenance and outages?

By email, since there is no status page. There is no regular maintenance
schedule: maintenance happens occasionally, when the OMERO server or its
database needs it, and it is announced in advance, as are outages and server
upgrades. Upgrade announcements matter even if the downtime does not, because
OMERO.insight has to be compatible with the server version.

### Something is not working. What should I check first?

Whether your network allows outbound port `4064`. A local firewall blocking it
is the most common problem reported to us, and it is what makes the desktop and
API clients time out on a machine where the web client works.
[Troubleshooting](troubleshooting.md) goes through the rest.
