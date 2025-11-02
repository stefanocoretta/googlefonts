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

Then, set the fonts in the `custom.scss` file using the relevant [Sass variables](https://quarto.org/docs/presentations/revealjs/themes.html#sass-variables). For example:

```scss
$font-family-sans-serif: "Lato";
$font-family-monospace: "Ubuntu Mono";
$presentation-heading-font: "Momo Trust Display";
```

You can select styles and axes by specifying them with the font name according to the [Google Fonts API](https://developers.google.com/fonts/docs/css2#axis_ranges):

```yaml
googlefonts: ["Roboto:ital,wght@0,100..900;1,100..900"]
```

If you don't specify any style or axis, the following default will be applied: `ital,wght@0,400;0,700;1,400;1,700`. This loads normal, italics, bold and bold italics.

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

