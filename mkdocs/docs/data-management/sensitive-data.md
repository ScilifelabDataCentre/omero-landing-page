# Data you may not upload

The one hard rule about what can go into the service, and how to stay on the right side of it.

!!! danger "No personal data"

    No personal data of any kind may be uploaded to SciLifeLab OMERO. This covers image content, filenames, folder names and metadata alike.

The rule has no exceptions and no approval process that unlocks them. The
service is not built or assessed for personal data, so there is no configuration
in which uploading it becomes acceptable.

!!! warning "You are responsible for your own data"

    We cannot inspect what you upload and we do not screen it. Making sure the
    data you put into the service is lawful, and that it complies with the GDPR
    and with your institution's rules, is your responsibility as the researcher
    together with your institution's.

## What counts as personal data

Broader than most people expect. Under the GDPR, personal data is any
information relating to an identifiable person, directly or indirectly. The
European Commission's
[explanation of personal data](https://commission.europa.eu/law/law-topic/data-protection/reform/what-personal-data_en)
is the short version, and SciLifeLab's
[GDPR and ethical review glossary](https://data-guidelines.scilifelab.se/topics/gdpr-ethical-review-glossary/)
defines the terms as they are used in Swedish research.

Two points catch imaging projects out:

- **Pseudonymised data is still personal data.** Replacing names with codes
  reduces the risk but does not take the data outside the GDPR, because the
  person remains identifiable by whoever holds the key. Researchers routinely
  assume the opposite. Pseudonymised human data is therefore also excluded from
  this service.
- **Only genuinely anonymous data falls outside.** Anonymisation has to be
  irreversible, with no key retained anywhere, which is a high bar and rarely
  what a study actually has.

If your project involves human data at all, SciLifeLab's
[research involving human data](https://data-guidelines.scilifelab.se/topics/research-involving-human-data/)
guidance is the right place to start, and your institution's research data
support is the right place to ask. The
[university resources list](https://data-guidelines.scilifelab.se/topics/university-rdm-resources/)
points at each one. Sweden's data protection authority,
[IMY](https://www.imy.se/en/), publishes the supervisory view.

## Where identifiers hide in imaging data

The image itself is often the least of it. Check all of these before an import:

- **Filenames and folder names.** Patient identifiers, initials, dates of
  birth and hospital case numbers end up in filenames constantly, and the
  folder structure a microscope wrote is preserved on import.
- **Format metadata.** Many acquisition formats carry a patient or subject
  block, notably anything originating from clinical instrumentation. It travels
  with the file and is read into OMERO.
- **Slide labels in whole-slide images.** Pathology formats frequently include
  a photograph of the physical slide label, which may be handwritten with
  identifying detail. It is part of the image file, not an annotation.
- **Free-text notes.** Acquisition comments, image descriptions and the
  annotations you add later are all plain text, and all searchable. See
  [Viewing and annotating](../using-omero/viewing-and-annotating.md).
- **Key-value pairs imported from a spreadsheet.** A bulk annotation from a lab
  spreadsheet will carry over every column in it, including the ones you did
  not mean to publish. See
  [Metadata for publication](metadata-for-publication.md).

## Checking a dataset before import

- List the filenames on their own and read them, rather than trusting your
  memory of the naming scheme.
- Open one file per instrument and format in Fiji or your acquisition software
  and look at the full metadata, not the summary.
- For whole-slide images, check whether a label or macro image is present.
- Rename before importing rather than after. Renaming in OMERO does not change
  the original filename that was recorded at import.
- Review the columns of any spreadsheet you intend to attach as key-value
  pairs.

Doing this once per acquisition protocol is usually enough, because the
identifiers appear in the same places every time.

## If you upload something by mistake

Tell us, quickly.

1. Email [omero@scilifelab.se](mailto:omero@scilifelab.se) and say what was
   uploaded and where it is. Do not describe the personal data itself in the
   email.
2. We delete it as soon as possible.
3. Tell your institution too. Its data protection officer is who decides
   whether the incident is reportable to IMY and whether the people affected
   have to be informed. That decision is not ours to make, and the deadlines
   for a reportable breach are short.

Do not try to fix it by deleting the images yourself and saying nothing. Traces
remain in our operational logs, which we retain, and it means nobody with the
authority to assess the incident knows it happened.
