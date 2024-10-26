# Action for Running Matlab Unit tests on Octave
[![Test Action](https://github.com/ttschnz/octave-action/actions/workflows/test-actions.yml/badge.svg)](https://github.com/ttschnz/octave-action/actions/workflows/test-actions.yml)

This action enables to run GNU Octave tests on [GitHub&reg;-hosted](https://docs.github.com/en/free-pro-team@latest/actions/reference/specifications-for-github-hosted-runners) runners:

- Currently, this action sets up only the latest octave release

## Examples
To use this action on GitHub-hosted runner, see the following example

### Run Matlab Unit tests on Github-Hosted Runner using Octave

```yaml
name: Run Matlab Tests
on: [push]
jobs:
  my-job:
    runs-on: ubuntu-latest
    steps:
      - name: Check out repository
        uses: actions/checkout@v4

      - name: Run tests
        uses: ttschnz/octave-action@v1
        env:
          WORKDIR: ./path/to/my/matlab/files/
        with:
          test_case: MyTestCases

```
