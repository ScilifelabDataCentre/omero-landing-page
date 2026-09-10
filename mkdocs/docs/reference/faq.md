# Frequently asked questions

Short answers, with links to the longer version where there is one.

## Access and accounts

### Who can use SciLifeLab OMERO?

Researchers at Swedish universities, and SciLifeLab facilities running user
projects.

### Does it cost anything?

No. The service is free of charge.

### Can collaborators outside Sweden take part?

Yes, they can be members of your group. The principal investigator has to be
affiliated with a Swedish university.

### How do I apply?

Through a round in the Swedish User and Project Repository (SUPR). Email us and we
will point you at the right one. The full process is on
[How to get access](/landing/get-access/).

### How long does a decision take?

Usually about a week from a complete request. SciLifeLab Data Centre reviews
proposals on scientific merit, expected impact, and whether the project fits the
conditions of the service.

### How do I log in?

A SUPR account is created for you when your proposal is approved. You then sign in
at the [OMERO web client](/webclient/) using your own university or institution
login.

### How many people can be in my group?

There is no limit.

## Storage and quotas

### How much storage do I get?

100 GB by default. Larger allocations are decided case by case.

### How long does an allocation last?

The duration is set case by case when your proposal is reviewed, and you can ask
to renew or extend it.

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
filenames and metadata alike.

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
to reach the server.

## Ending a project

### What happens when my allocation ends?

You get one month of notice, after which the data is deleted automatically. There
is no grace period, so export everything you need before the deadline. See
[when your project ends](../data-management/end-of-project.md).

### Can I get more time?

Ask us about a renewal or an extension while the notice period is still running.

## The service itself

### Is there an uptime guarantee?

No. SciLifeLab OMERO is a prototype. Availability is best effort, there is no
uptime target and no status page, and maintenance can happen without advance
notice.
