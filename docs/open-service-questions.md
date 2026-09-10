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
- **How do SciLifeLab facility users get accounts at all?** The facility route
  never goes through a SUPR proposal, so the account creation path described for
  researchers does not apply. This is currently unstated on the site.

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

## Technical

- **Can network-isolated HPC systems reach the OMERO API?** Access from a cluster
  goes over the API, so compute nodes need outbound network access. Systems
  without it cannot use the service at all, and
  `mkdocs/docs/workflows/hpc.md` should say which ones those are.
- **Is 100 GB the intended default quota?** It is modest for microscopy and will
  shape what people expect before they apply.

## Content that depends on the above

The documentation pages listed in `mkdocs/mkdocs.yml` under `nav` are the Phase 1
set and are currently skeletons. They need real content before the documentation
is worth linking prominently. The rest of the pages are kept out of the
navigation by the `not_in_nav` list until they are written.
