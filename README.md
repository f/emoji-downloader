# ⏬ Emoji Downloader

A simple Emoji downloader for CLI

## Features

- Uses emojipedia to get the file
- Supports all the emojis including the variants/skin tones

## Installation

Copy and paste `emojidl.sh` contents (or following snippet) into your .bashrc or .zshrc file. It's a simple function:

```bash
emojidl() {
curl -kLss "https://emojipedia.org/search/?q=$1" | grep "on Apple" | grep " 2x" | sed -n 's/.*<img src="\([^"]*\)".*/\1/p' | xargs wget
}
```

## Oneliner Explaination

- Makes a curl request to `https://emojipedia.org/search/?q=<EMOJI>`
- Finds the lines including "on Apple" text
- Finds "2x" ones
- Parses the line using `sed` to extract the src attribute
- Uses `wget` to download the extracted URL

## Usage

Just write the `emojidl <emoji>` and it'll find and download the emoji.

```bash
$ emojidl 🚂

https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/locomotive_1f682.png
Resolving emojipedia-us.s3.dualstack.us-west-1.amazonaws.com (emojipedia-us.s3.dualstack.us-west-1.amazonaws.com)... 52.219.112.184
Connecting to emojipedia-us.s3.dualstack.us-west-1.amazonaws.com (emojipedia-us.s3.dualstack.us-west-1.amazonaws.com)|52.219.112.184|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 19806 (19K) [image/png]
Saving to: ‘locomotive_1f682.png’

locomotive_1f682.png %100 in 0s
```

## License
It's CC0.
