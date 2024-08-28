# Helm Charts

A collection of helm charts for things that currently don't exist or that I needed at some point and got bored of writing the manifests out.

Some of them will sort of work, some of them may not have sensible defaults.

At some point, I'll clean up and get it working but for now, everything works with valid values overrides. But the "base" values may not be functional (pihole for example :-p)

## Contributing

* Create a new branch with the version you're working on.
  `git checkout -b SOME_BRANCH`
* Change what you need to within the chart you're working on.
* Run `yamllint` and `helm-docs` on your work to ensure the actions complete.
* Push your changes and the linting/documentation and testing action will run.
* All going well, raise a pull request.

Once the pull request has been accepted, a new release will be automatically created.
