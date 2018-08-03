# gifify

## Install

With [fisherman]

```
fisher jukben/gifify
```

## About

It's basically wrapper around https://github.com/maxogden/gifify-docker created just for convenience. Thus Docker is required.

## Usage

```fish
Usage: gifify <input> [width=350] [options...]
```

```
Options:
    --colors <n>            Number of colors, up to 255, defaults to 80
    --compress <n>          Compression (quality) level, from 0 (no compression) to 100, defaults to 40
    --from <position>       Start position, hh:mm:ss or seconds, defaults to 0
    --fps <n>               Frames Per Second, defaults to 10
    --reverse               Reverses movie
    --speed <n>             Movie speed, defaults to 1
    --subtitles <filepath>  Subtitle filepath to burn to the GIF
    --text <string>         Add some text at the bottom of the movie
    --to <position>         End position, hh:mm:ss or seconds, defaults to end of movie
    --no-loop               Will show every frame once without looping
```

[fisherman]: https://github.com/fisherman/fisherman
