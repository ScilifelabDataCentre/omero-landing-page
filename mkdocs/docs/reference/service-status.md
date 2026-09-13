# Service status and availability

What you can expect from a prototype service in terms of uptime and change.

!!! warning "Best effort, no uptime target"

    SciLifeLab OMERO is a prototype. There is no uptime target and no status page, and the service is not backed up. Keep your own independent copy of any raw data you upload.

## What best effort means in practice

The service is operated and monitored, but it carries no service level
agreement. There is no figure we commit to, no compensation if it is not met,
and no guaranteed response time outside working hours.

In practice that means two things for how you work. Do not put SciLifeLab OMERO
on the critical path of something that has a hard deadline of its own, and never
let it hold the only copy of data you cannot reproduce.

## Maintenance and upgrades

Maintenance happens in planned windows, and they are announced in advance by
email rather than on a status page. Expect the service to be unavailable for the
duration of a window.

Server upgrades are announced the same way. Pay attention to those even if the
downtime does not matter to you, because OMERO.insight and the other desktop
clients have to be compatible with the server version they connect to. An
upgrade can be the reason a client that worked last week reports a version
mismatch; see [OMERO.insight](../clients-and-apis/omero-insight.md).

## How outages are communicated

By email to the service's users. There is no status page to check and no feed to
subscribe to, so the mail we send is the notification.

If the web client is not responding and you have had no email, it is worth
telling us rather than assuming we already know.

## Reporting a problem

Email [omero@scilifelab.se](mailto:omero@scilifelab.se). For an outage, say what
you tried, what you saw, and roughly when it started; if the web client and a
desktop client fail differently, that difference is useful.

Before reporting, [Troubleshooting](troubleshooting.md) is worth a look, because
the most common report we get is a local firewall blocking port `4064` rather
than anything wrong with the service. [Getting help](../support.md) covers what
else we can help with and how quickly.
