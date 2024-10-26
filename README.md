# Action for Running Matlab Unit tests on Octave
[![Test Action](https://github.com/ttschnz/Octave-UnitTests/actions/workflows/test-actions.yml/badge.svg)](https://github.com/ttschnz/Octave-UnitTests/actions/workflows/test-actions.yml)

This action enables to run [Matlab Unittest Classes](https://ch.mathworks.com/help/matlab/ref/matlab.unittest.testcase-class.html) on GNU Octave using [GitHub&reg;-hosted](https://docs.github.com/en/free-pro-team@latest/actions/reference/specifications-for-github-hosted-runners) runners:

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
        uses: ttschnz/Octave-UnitTests@v3
        with:
          directory: ./path/to/my/matlab/files/
          test_case: MyTestCases
          packages: |
            https://github.com/gnu-octave/statistics/archive/refs/tags/release-1.7.0.tar.gz
            https://downloads.sourceforge.net/project/octave/Octave%20Forge%20Packages/Individual%20Package%20Releases/struct-1.0.18.tar.gz
            https://downloads.sourceforge.net/project/octave/Octave%20Forge%20Packages/Individual%20Package%20Releases/optim-1.6.2.tar.gz

```
