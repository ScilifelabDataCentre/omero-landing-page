# Working from an HPC system

Reaching your data from a compute cluster through the OMERO API.

!!! warning "There is no shared filesystem"

    SciLifeLab OMERO is not mounted on any HPC system and there is no dedicated transfer route. Access from a cluster goes through the OMERO API, the same way it would from your own machine, which means the compute nodes need outbound network access to the server.

!!! info "Not tested on a specific Swedish system"

    We have not validated this against SNIC, NAISS or any particular cluster,
    so we cannot tell you that a given system works. What is well exercised is
    the API route itself, which has been in use for a long time and is the same
    code path whether it runs on your laptop or on a compute node.

    If you get this working on a Swedish HPC system, or find that you cannot,
    email [omero@scilifelab.se](mailto:omero@scilifelab.se). We would rather
    document your experience than keep guessing.

## What you need on the cluster side

`omero-py`, which brings both the Python library and the `omero` command line
tool. The awkward part of the installation is the Ice bindings, and on a cluster
you are unlikely to be able to install system packages, so use conda or a
container. OME's
[setup instructions](https://omero-guides.readthedocs.io/en/latest/python/docs/setup.html)
cover getting Ice from conda-forge, which is the approach that works without
root.

A container image built once and reused across jobs is usually less trouble than
a conda environment on a shared filesystem, and it makes the job reproducible.
See [Python API](../clients-and-apis/python-api.md) for what the library itself
looks like.

## Authenticating from a batch job

A batch job cannot sign in interactively, so it cannot be sent to SUPR to
authenticate. Use a session key instead: sign in to [/webclient/](/webclient/),
copy the session token as described in
[Accounts and login](../getting-started/accounts-and-login.md), and give the job
that. This is the supported approach.

The key goes in both the username and the password field, or with `-k` if the
job shells out to the `omero` command line:

```bash
omero login -k "$OMERO_SESSION_TOKEN" -s omero.scilifelab.se -p 4064
```

Two consequences worth planning around:

- **Queue time is the risk, not run time.** A session stays alive as long as it
  is being used, so a job that reads steadily from the server for three days
  keeps its own key valid throughout. What kills a key is sitting unused, which
  is exactly what happens to a job waiting in the queue. Copy the key close to
  submission, and have the job fail loudly on an authentication error so it can
  be resubmitted rather than silently producing nothing.
- **The key is a credential.** Pass it through an environment variable or a
  file readable only by you, not on the command line where it shows up in the
  scheduler's job listing, and never in a script committed to a repository.

## Network access requirements

The compute nodes need outbound access to `omero.scilifelab.se` on port `4064`.
That is not a web port, so a cluster that allows outbound HTTPS does not
necessarily allow this. Test it from an interactive session on a compute node,
not just from the login node, because the two are often filtered differently:

```bash
nc -vz omero.scilifelab.se 4064
```

[Troubleshooting](../reference/troubleshooting.md) covers the same test and what
a failure means.

## Systems that cannot reach the service

Some HPC environments deliberately give compute nodes no outbound network
access at all. On such a system this approach cannot work, and there is no
alternative today: no staging area, no filesystem mount, no data transfer
service. Supporting network-isolated systems is something we would like to
address in future, but nothing is in place now.

If your cluster is in that position, stage the data yourself. Export from OMERO
to a filesystem you can reach, run the analysis there, and write the results
back to OMERO afterwards from a machine that does have access. See
[Exporting your data](../data-management/exporting.md).

## Staging data for a run

Where the nodes can reach the service, prefer reading through the API over
copying the whole dataset. You fetch only the planes you ask for, you do not
need scratch space for a second copy, and there is nothing to keep in step.

Where you do have to stage files, keep a record of which OMERO image IDs the
copy came from and when, so the provenance survives, and clean the scratch copy
up after the run. Write results back as attachments, regions of interest and
key-value pairs rather than leaving them on the cluster; see
[Analysing data on your own machine](local-analysis.md), which covers the same
ground for a single machine, and
[Batch operations](batch-operations.md) for driving many images at once.
