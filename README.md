# Hello world Dart action

This action prints "Hello World" or "Hello" + the name of a person to greet to the log. To learn how this action was built.

## Inputs

### `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

### `time`

The time we greeted you.

## Example usage

```yaml
uses: EugenioTesio/hello-world-dart-action@v1.0
with:
  who-to-greet: 'Mona the Octocat'
```
