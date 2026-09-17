# When your project ends

What happens to your data when an allocation ends, and what you need to do before then.

!!! warning "Data is deleted automatically"

    You get one month of notice before an allocation ends. After that the data is deleted automatically and there is no grace period, so export everything you need before the deadline.

SciLifeLab OMERO is a place to work with image data during a project. It is not
an archive, it is not backed up, and an allocation is time-limited by design.
The end of a project is therefore a deadline you have to act on, not a state the
data can sit in.

!!! info "Which allocations this applies to"

    Every project allocation is time-limited, whether it came through the
    reviewed research track or was created by a facility inside its own round. A
    facility's round is not itself time-limited, so a facility has a deadline per
    user project rather than one of its own. See
    [Delivering data as a facility](../workflows/facility-delivery.md).

## The notice you will receive

One month before the allocation ends, an email arrives from
[omero@scilifelab.se](mailto:omero@scilifelab.se). It goes to the project's
users, not only to whoever submitted the proposal.

Those thirty days are the whole window. They are the time in which to export
your data, and also the time in which to request a renewal if the project is
continuing. Nothing happens automatically in your favour after the deadline
passes.

## Closeout checklist

Work through this while the notice period is running, not on the last day.
Exporting a large project takes longer than people expect.

- Decide whether the project is continuing. If it is, request the renewal
  first, because that removes the deadline entirely.
- Export the original files for everything you need to keep. See
  [Exporting your data](exporting.md).
- Export the annotations separately. Tags, key-value pairs, comments and
  regions of interest do not travel with a download of the original files, and
  they are the part that is genuinely hard to recreate.
- Check that everyone in the group has what they need. In a facility delivery
  project, the researcher and the facility both hold data in the same group and
  may each be assuming the other has exported it.
- Confirm your own independent copy of the raw data is intact, which is the copy
  you should have had throughout.
- Note which results live only in OMERO, for instance figures built in
  OMERO.figure, and export those too.

## Exporting before the deadline

[Exporting your data](exporting.md) covers the mechanics and, importantly, the
difference between downloading original files and exporting as OME-TIFF. For a
whole project, the command line is much less painful than clicking through the
web client; see [Batch operations](../workflows/batch-operations.md) and the
[command line](../clients-and-apis/command-line.md) page.

Plan around the size. A 100 GB project does not come out of the server in an
afternoon over a domestic connection, and port `4064` may be blocked on the
machine you would rather use.

## Extending or renewing instead

A renewal or an extension is requested in SUPR, in the same project your
allocation belongs to, and the cut-off is the end of the thirty-day notice
period. Ask before the notice expires rather than after.

Email [omero@scilifelab.se](mailto:omero@scilifelab.se) if you are not sure
what to submit or which round applies. If the project has outgrown its storage
rather than its time, [Quotas and limits](../reference/quotas-and-limits.md)
covers that case instead.

## What is deleted

At the end of the allocation your account is disabled and the project's image
data, along with the annotations attached to it, is deleted. The deletion is
permanent. There are no backups to restore from, so there is nothing to ask us
for afterwards.

Service records outlast the data. Logs, operational metadata and audit records
are retained after the image data is deleted, which is normal for an operated
service and is what lets us answer questions about what happened to an
allocation. The
[privacy policy](/landing/privacy/) describes what the service holds about you.
