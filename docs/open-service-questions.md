# Open service questions

Questions raised by the September 2026 content review that are still unanswered.
None of them blocks a page any more, but each one leaves a soft spot in the copy.
Delete an entry once the answer has been written into the site or the
documentation.

Most of the original register was answered in September 2026 and written into the
site. What follows is what was left over.

## Access and accounts

- **How does someone with no federated login sign in?** Sign-in goes through
  SWAMID, and SUPR accepts eduGAIN, so academic identities in Europe are covered.
  What is not covered is a researcher or collaborator at a hospital, region,
  company or research institute, or at a university outside the federation.
  Eligibility explicitly includes non-university researchers in Sweden, so this
  is a mainstream case rather than an edge one.
  `mkdocs/docs/getting-started/accounts-and-login.md` and
  `mkdocs/docs/using-omero/sharing.md` both tell such a person to email us,
  which is a holding position rather than an answer.

## Legal

- **Controller and processor roles for service data.** The privacy policy
  describes the account data the service holds and now also the operational
  records retained after deletion, but the roles have not been assessed. A DPO or
  legal review at SciLifeLab is required before either the privacy policy
  addition or `content/terms.md` is considered final. This is the one item that
  still blocks the terms of use.
- **Where do users onboarded outside a SUPR proposal accept the terms?** The
  answer given was "in the SUPR proposal". SciLifeLab Data Centre is the legal
  entity named in the terms. Neither covers a facility, which submits no
  reviewed proposal, nor a researcher added by a facility to one of its
  projects, nor anyone onboarded before the round opened.
- **How is the facility storage cost obligation established?** The site says a
  facility covers its storage costs after the pilot phase, and that the cost is
  calculated from storage usage. Three things are still missing before that can
  go into `content/terms.md` or a facility agreement: when the pilot phase ends,
  the actual rate or formula, and who signs on the facility's behalf. It is a
  financial commitment, so it cannot rest on a sentence in the access page.

## Technical

- **Which OMERO server version is running, and which OMERO.insight release
  should people install?** Unspecified, so
  `mkdocs/docs/clients-and-apis/omero-insight.md` keeps an admonition telling
  people to email us if the login window reports a version mismatch. Publishing
  the server version, and updating it at each upgrade, would remove that round
  trip.
- **How long does a session token last?** The documentation says tokens expire
  and to fetch a new one, because we do not have the figure. It matters most for
  HPC batch jobs, where a job can sit in a queue for days before it runs;
  `mkdocs/docs/workflows/hpc.md` currently advises fetching the key close to
  submission and failing loudly.
- **Can network-isolated HPC systems be supported?** Compute nodes need
  outbound access to port `4064`, and a cluster that denies it cannot use the
  service at all. `mkdocs/docs/workflows/hpc.md` says so and describes the
  manual staging workaround. Supporting those systems is a future feature with
  nothing behind it yet, and no Swedish system has been tested either way.
- **When will publishing to a public repository be supported?** Planned, with
  no date. `mkdocs/docs/data-management/publishing.md` says exactly that, which
  is accurate but not useful to someone planning a submission.

## State of the documentation

Every page in `mkdocs/docs/` is now written and in the navigation, and
`not_in_nav` in `mkdocs/mkdocs.yml` is empty. `content/terms.md` is the only
page left unpublished, held by the controller and processor question above.
