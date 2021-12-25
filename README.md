# Helm Charts

A collection of helm charts for things that currently don't exist or that I needed on a basic level.

## How-To

Create a new branch with the version you're working on.
`git checkout -b releases/x.x.x-SemVer`

Change what you need to within the chart you're working on.
Run `yamllint` and `helm-docs` on your work to ensure the actions complete.

Push your changes and the linting/documentation and testing action will run.

All going well, raise a push request.

Once the push request has been accepted, a new release will be automatically created.