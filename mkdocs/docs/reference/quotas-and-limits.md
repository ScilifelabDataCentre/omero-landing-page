# Quotas and limits

How much space a project gets, and what happens when it runs out.

## Default and larger allocations

An allocation comes with 100 GB of storage by default. There is no limit on how
many people are in the group.

The quota belongs to the project, not to each person in it. Everyone in your
group draws on the same 100 GB, so one member importing a large screen reduces
what is left for everybody else. Plan the budget as a project, not per user.

100 GB is modest for microscopy. A single multi-position, multi-channel
timelapse can account for a noticeable fraction of it, so work out roughly what
your project will produce before you apply rather than after you hit the
ceiling. [Organising your data](../using-omero/organising-data.md) is worth
reading at the same time.

## Checking your current usage

Not something you can do yourself yet. OMERO.web does not show the group's
consumption, so email [omero@scilifelab.se](mailto:omero@scilifelab.se) and we
will tell you where you stand.

That makes it worth asking before a large import rather than discovering the
limit partway through one.

## Approaching the limit

!!! warning "There is no margin"

    The quota is enforced exactly. When the group reaches 100 GB, imports fail
    with an error saying so, and there is no overshoot allowance to carry you
    through the rest of a batch. A bulk import can therefore stop halfway, and
    you have to work out which files made it in.

You are emailed when the limit is reached, so you will not only find out from a
failed import. The message goes to the project's users rather than only to
whoever administers it.

If an import has failed for the quota, either free space by exporting and then
deleting data you no longer need in the service, or request more. Deleting is
permanent and there are no backups, so export first; see
[Exporting your data](../data-management/exporting.md).

## Requesting more space

More space is requested in SUPR, as a new proposal explaining why the project
needs it. It is not an email request, because the additional storage is reviewed
the same way the original allocation was. Say what you have produced so far,
what is still to come, and why it has to stay in the service rather than in your
own storage.

Email [omero@scilifelab.se](mailto:omero@scilifelab.se) if you are not sure
which round to submit it to, or whether more space is the right answer for your
case at all. [How to get access](/landing/get-access/) describes the proposal
route.
