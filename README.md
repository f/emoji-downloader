# ⏬ Emoji Downloader

A simple Emoji downloader for CLI

## Features

- Uses emojipedia to get the file
- Supports all the emojis including the variants/skin tones

## Installation

Copy and paste `emojidl.sh` contents (or following snippet) into your .bashrc or .zshrc file. It's a simple function:

```bash
emojidl() {
curl -kLss "https://emojipedia.org/search/?q=$1" | grep "on Apple" | grep " 2x" | sed -n 's/.*<img src="\([^"]*\)".*/\1/p' | xargs curl -O
}
```

## Oneliner Explaination

- Makes a `curl` request to `https://emojipedia.org/search/?q=<EMOJI>`
- Finds the lines including "on Apple" text
- Finds "2x" ones
- Parses the line using `sed` to extract the src attribute
- Uses `curl` once again to download the extracted URL

## Usage

Just write the `emojidl <emoji>` and it'll find and download the emoji.

```bash
$ emojidl 🚂

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 16940  100 16940    0     0  12233      0  0:00:01  0:00:01 --:--:-- 9472
```

## License
It's CC0.
