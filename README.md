# Google Fonts Extension For Quarto

This Quarto filter allows you to use Google Fonts in HTML output, including the `revealjs` format.

## Installing

Run:

```bash
quarto add stefanocoretta/googlefonts
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

Add the following in the YAML preamble.

```yaml
filters:
    - googlefonts
googlefonts: ["Momo Trust Display", "Lato", "Ubuntu Mono"]
```

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

