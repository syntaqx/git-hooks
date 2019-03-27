# git-hooks

[pre-commit]: http://pre-commit.com/

A collection of useful Git hooks for use with [pre-commit][].

## Usage

Create or append to your `.pre-commit-config.yaml` configuration:

```yaml
- repo: https://github.com/syntaqx/git-hooks
  rev: v0.0.1
  hooks:
    - id: circleci-config-validate
```

## Available hooks

* `circleci-config-validate` - Test if the CircleCI config file is well formed.

## License

[MIT]: https://opensource.org/licenses/MIT

`git-hooks` is open source software released under the [MIT license][MIT].
