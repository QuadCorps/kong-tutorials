
## How to keep your Anypoint Exchange documentation in sync with your Git documentation

## Problem Statement

I want to align with best practice and keep my code documentation 
close to my custom MuleSoft extension, whilst keeping my Anypoint Exchange
documentation in lock step.

## Description

When custom MuleSoft extensions, e.g. connectors, are published to Anypoint Exchange,
by default any markdown in the repository is not automatically represented in Exchange.
This tutorial shows how to leverage existing markup and the Anypoint CLI in pipelines
in order to keep the Exchange documentation up-to-date.

## Why 

_Why we want to keep the documentation mastered in the source repository?_

**Accessibility**

Documentation stored within the repository is easily accessible to anyone who has access to the code. This convenience encourages developers to refer to the documentation regularly, ensuring they are well-informed about the project's setup, usage, and contribution guidelines.

**Version Control**

When documentation is stored alongside code, it benefits from the same version control system. This ensures that changes to the code and corresponding updates to the documentation are tracked together. As a result, it's easier to match documentation to the version of the code it describes, maintaining consistency and reducing confusion.

**Collaboration**

Keeping documentation in the repository facilitates collaboration. Developers can update documentation alongside code changes in the same pull requests, encouraging the maintenance of accurate documentation. This process ensures that knowledge is shared effectively within the team and with external contributors.

**Review Process**

Just like code, documentation updates can go through the same review processes when they are part of the repository. This encourages peer review of documentation changes, improving the quality and accuracy of information.

**Consistency**

Having a single source of truth for both code and documentation ensures consistency. Developers are more likely to keep documentation up to date if it's part of their regular development workflow, rather than stored in a separate system that might be overlooked.

**Ease of Setup for New Developers**

New developers can get up to speed more quickly when all necessary documentation, including setup instructions, usage examples, and development guidelines, is immediately available in the repository they are working with. This reduces the onboarding time and the potential for initial misunderstandings or errors.

**Reduced Risk of Documentation Drift**

When documentation is stored separately from the codebase, there's a higher risk that it will become outdated or no longer accurately reflect the code. Keeping them together reduces this risk as developers are reminded to update documentation as part of their development tasks.

