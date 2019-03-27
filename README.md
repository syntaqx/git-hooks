# git-hooks

[pre-commit]: http://pre-commit.com/

A collection of useful Git hooks for integration with [pre-commit][].

## Usage

Create or append to your `.pre-commit-config.yml` configuration:

```yaml
- repo: https://github.com/syntaqx/git-hooks
  rev: v0.0.1
  hooks:
    - id: circleci-config-validate
```

Then simply install or run the checks on-demand as desired.

## License

[MIT]: https://opensource.org/licenses/MIT

`git-hooks` is open source software released under the [MIT license][MIT].
