# git-hooks

[pre-commit]: https://pre-commit.com/

A collection of useful Git hooks for use with [pre-commit][].

## Usage

Create or append to your `.pre-commit-config.yaml` configuration:

```yaml
- repo: https://github.com/syntaqx/git-hooks
  rev: v0.0.7
  hooks:
    - id: circleci-config-validate
```

## Available hooks

* `circleci-config-validate` - Test if the CircleCI config file is well formed.
* `go-fmt` - Runs `go fmt` and asserts no changes are needed.
* `go-test` - Runs `go test` and asserts no tests are failing.
* `go-golangci-lint` - Runs `golangci-lint`, requires golangci-lint.

## License

[MIT]: https://opensource.org/licenses/MIT

`git-hooks` is open source software released under the [MIT license][MIT].
