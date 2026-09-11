# Open service questions

Questions raised by the September 2026 content review that are still unanswered.
None of them blocked the landing page rewrite, but each one leaves a soft spot in
the copy or a page that cannot be written yet. Delete an entry once the answer
has been written into the site or the documentation.

## Access and accounts

- **Which SUPR round should researchers apply to today?** The dedicated OMERO round
  under Local and Special Rounds is open now.
- **How do collaborators based outside Sweden sign in?** The access page states
  that a SUPR account is created on approval and that you then use your own
  university or institution login. A collaborator without a Swedish federated
  identity has no such login. SUPR supports email and password accounts, but this
  needs confirming before `mkdocs/docs/getting-started/accounts-and-login.md`
  describes it.
- **How does a researcher in Sweden without a university login sign in?**
  Eligibility now covers any life science researcher in Sweden, not only those at
  universities. Researchers at hospitals, regions, institutes and companies may
  have no SWAMID identity, which widens the question above from a collaborator
  edge case to a mainstream one.
- **How do SciLifeLab facility users get accounts?** A facility submits no
  reviewed proposal, so the account creation path described for researchers does
  not apply directly. A facility that opts into SUPR administration presumably
  follows the same path; one that does not has no documented route. Since there
  are no group owners either, such a facility cannot change its own membership
  at all and has to email us for every change.
- **Which OMERO group permission level do facility groups get?** Every group is
  read-write today, so a user added to a facility group so they can view and
  download data can also delete the facility's data.
  `mkdocs/docs/workflows/facility-delivery.md` carries this as a warning. Whether
  read-only or read-annotate groups can be provisioned is unresolved.
- **How does a facility hand data over to a researcher?** There are no group
  owners on this service, and OME documents `chown` as requiring a full
  administrator, a restricted administrator with the Chown privilege, or a group
  owner. A facility therefore cannot transfer ownership at all, and can only
  `chgrp` data it imported itself once its account is in the destination group.
  Either the Data Centre runs both operations on request, or facilities are
  granted the Chgrp and Chown restricted privileges. Until this is decided there
  is no complete self-service handover, and
  `mkdocs/docs/workflows/facility-delivery.md` says so.

## Legal

- **Which legal entity operates the service and is named in the terms?**
  SciLifeLab, or a host university such as KTH, Uppsala or Chalmers. Needed
  before `content/terms.md` can be drafted.
- **Where do users actively accept the terms?** The answer given was "in the SUPR
  proposal", which covers neither the facility route nor anyone onboarded before
  the dedicated round opens.
- **Controller and processor roles for service data.** The privacy policy now
  describes the account data the service holds, but the roles have not been
  assessed. A DPO or legal review at SciLifeLab is required before either the
  privacy policy addition or the terms are considered final.
- **How is the facility storage cost obligation established?** The site now says
  a facility covers its storage costs after the pilot phase. That is a financial
  commitment, so it belongs in `content/terms.md` or in a separate facility
  agreement, and neither exists yet. When the pilot ends, how the cost is
  calculated and who signs also need answering.

## Technical

- **Can network-isolated HPC systems reach the OMERO API?** Access from a cluster
  goes over the API, so compute nodes need outbound network access. Systems
  without it cannot use the service at all, and
  `mkdocs/docs/workflows/hpc.md` should say which ones those are.
- **Is 100 GB the intended default quota?** It is modest for microscopy and will
  shape what people expect before they apply.

## Content that depends on the above

Most documentation pages are now written.
`mkdocs/docs/getting-started/accounts-and-login.md` is the only page in the
navigation that is still a skeleton, because it depends entirely on the account
and login questions above. The pages held back by `not_in_nav` in
`mkdocs/mkdocs.yml` are waiting on service facts rather than on OMERO
documentation.
