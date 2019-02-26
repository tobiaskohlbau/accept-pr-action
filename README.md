# Accept PR Action

A GitHub action that accepts a pull request on succeeding checks.

**Table of Contents**

<!-- toc -->

- [Notice](#notice)
- [Usage](#usage)
- [Contributing](#contributing)
  * [Running the tests](#running-the-tests)

<!-- tocstop -->

## Notice

This is based upon work from [jessfraz/shaking-finger-action](https://github.com/jessfraz/shaking-finger-action).
Many thanks!

## Usage

```
workflow "accept pr action" {
  on = "pull_request"
  resolves = ["accept pr on success"]
}

action "accept pr on success" {
  uses = "tobiaskohlbau/accept-pr-action@master"
  secrets = ["GITHUB_TOKEN"]
}
```

## Contributing

### Running the tests

The tests use [shellcheck](https://github.com/koalaman/shellcheck). You don't
need to install anything. They run in a container.

```console
$ make test
```
