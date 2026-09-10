# Metadata for publication

Annotating as you go so that a dataset is still intelligible when you come to
publish it.

Nobody enjoys reconstructing acquisition parameters from memory eighteen months
after the fact, and a repository submission will ask for exactly the things that
are hardest to recover. The cheap version of this work is doing it at import.

## What to record and when

Bio-Formats reads a lot from the original files automatically, which is one
reason to [import the vendor originals](../using-omero/supported-formats.md)
rather than converted TIFFs. What it cannot read is everything about the
experiment rather than the microscope: the sample, the preparation, the
treatment, the biological question.

Record that as key-value pairs at import time, or immediately after. See
[Viewing and annotating](../using-omero/viewing-and-annotating.md) for adding
them by hand.

## Adding metadata in bulk

Prepare it in a spreadsheet and apply it in one operation rather than editing
images one at a time. OME documents both routes:

- [the Populate Metadata script in OMERO.web](https://omero-guides.readthedocs.io/en/latest/upload/docs/metadata-ui.html),
  which takes a local CSV file and turns it into OMERO tables on images or wells,
  entirely through the browser
- [importing metadata from the command line](https://omero-guides.readthedocs.io/en/latest/upload/docs/metadata.html),
  which is more capable and is the route that can create key-value pairs as well
  as tables

See [Batch operations](../workflows/batch-operations.md).

## Community metadata guidelines

Rather than inventing your own set of keys, start from a community standard, so
that your annotations line up with what a repository expects. For bioimaging the
relevant one is REMBI, Recommended Metadata for Biological Images; the EBI's
[REMBI overview](https://www.ebi.ac.uk/bioimage-archive/rembi-help-overview/)
is a readable summary of what to collect and why.

Agree the keys with your group before the first import, for the same reason
naming conventions matter in [Organising your data](../using-omero/organising-data.md):
`objective` and `Objective_lens` are two different keys as far as search is
concerned.

## Key-value pairs that travel well

- one fact per key, so filtering works
- a consistent key name across the whole group, spelled the same way every time
- units in the value or the key, not left implied
- identifiers that mean something outside your lab, such as a strain or antibody
  catalogue number

!!! warning "No personal data, including in metadata"

    The rule covers key-value pairs, tags, comments and filenames, not only
    image content. See the [access page](/landing/get-access/).

## Checking a dataset before you write it up

Ask someone in your group who did not acquire the data to open the dataset and
say what the experiment was. If they cannot, the annotation is not finished, and
that is much cheaper to discover now than during a submission. Then read
[Publishing to a public repository](publishing.md) for what the service can and
cannot do for you at that point.
