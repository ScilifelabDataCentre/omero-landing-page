# Technical setup SciLifeLab OMERO landing page

**Status:** Accepted

**Date:** 2026-07-24

## Summary

This documents the chosen technical solution for OMERO's landing page.

## Context

A basic landing page for SciLifeLab OMERO is needed for potential users to get information about the service. 
This landing page will for example be linked to when the prototype service is listed at the data platform.  

Initial content includes:
- Description and purpose of the service
- How to get access
- Contact information
- Information on funders 

## Comparison of solutions

### Single page as part of an established website
Other services have their descriptive pages as part of an established website managed and maintained by a different team. 
SciLifeLab protocols.io, and SciLifeLab Data Repository each have a page on the general scilifelab.se website under the Data tab.
A description for FAIR Storage is hosted on the data platform.

Pros:
- no need for us to design, build and host our own site

Cons:
- dependence on another team for deployment of updated pages requiring us to coordinate with another team’s timelines

### Build our own static website and deploy it ourselves
We build a static website ourselves using a static website generator and then deploy it ourselves using eg. an nginx container 

Pros: 
- we have the expertise to both build and host the site and can learn from team freya where necessary
- full control over the deployment and updating schedule

Cons:
- requires extra effort initially to set up the site and visual identity along with processes for deployment
- requires maintenance of an additional github repository (for the website code) and deployment of an additional container 

Options for static website generators are Hugo and Material for mkdocs. 
Both the data platform in its current form and the Swedish reference genome portal are built as static sites using Hugo. 
Hugo is light-weight and fast and expertise and reference code exist within DC. 
Material for mkdocs is another static site generator focusing on building software documentation sites. Team Squirrel is using it to build the documentation for DivBase. 
It has very much functionality out-of-the-box and requires even less fiddling than Hugo. However, it is strongly geared towards code documentation. 

### Use a web development framework to build a dynamic site (and deploy it ourselves)
We use a full web development framework such as django to build a dynamic site and deploy it ourselves. 

Pros:
- possibility to create pages in the web browser dynamically, instead of having to write markdown files, rebuilding and redeploying the site
- dynamic functionality from the start in case the scope of the website increases later

Cons:
- more involved setup process and deployment, increased maintenance effort (security updates etc)

## Decision

Given that we have the expertise to build and host our own static site, we deem it too restrictive to be dependent on another team to deploy updates. 
As there currently is no need for dynamic behavior, we decide that building a static website is sufficient. 
The minimal effort required to set up and maintain this option well worth the flexibility and control hosting it ourselves offers. 
We use Hugo for the landing page, keeping mkdocs in mind in case we ever need to publish classical docs. 
We store the Hugo template and the markdown content files in a public GitHub repository (this one). 
