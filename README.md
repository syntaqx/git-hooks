# ![git-hooks](./docs/social-preview.png)

[pre-commit]: https://pre-commit.com/

A collection of useful Git hooks for use with [pre-commit][].

## Available hooks

* `circleci-config-validate` - Test if the CircleCI config file is well formed.
* `forbid-binary` - Prevent binary files from being committed.
* `go-fmt` - Runs `go fmt` and asserts no changes are needed.
* `go-test` - Runs `go test` and asserts no tests are failing.
* `go-mod-tidy` - Runs `go mod tidy` and asserts all dependencies have been added.
* `go-generate` - Runs `go generate` aginst the projects go files.
* `go-golangci-lint` - Runs `golangci-lint`, requires golangci-lint.
* `shellcheck` - Run `shellcheck` against scripts.
* `shfmt` - Run `shfmt` against scripts.

## Configure `pre-commit`

Create or append to your `.pre-commit-config.yaml` configuration:

```yaml
- repo: https://github.com/syntaqx/git-hooks
  rev: v0.0.15
  hooks:
  - id: circleci-config-validate
  - id: forbid-binary
  - id: go-fmt
  - id: go-test
  - id: go-mod-tidy
  - id: go-generate
  - id: go-golangci-lint
  - id: forbid-binary
  - id: shellcheck
  - id: shfmt
```

## License

[MIT]: https://opensource.org/licenses/MIT

`git-hooks` is open source software released under the [MIT license][MIT].
