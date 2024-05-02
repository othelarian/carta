# Tile Creator

to install & use:

```shell
# to install you need node
npm i
# to use you have to call live with the generate command
live generate -d name-of-the-file
# for example, to generate the prototype map
live generate -d prototype
```

The file must be in data, and wrote in LiveScript (don't add the extension).

All the generated maps goes into the `maps` directory, as a svg file
(named `name-of-the-file.svg`).

If you want to also export as png then add `i` option:

```shell
live generate -id name-of-the-file
# or
live generate -i -d name-of-the-file
```