# somafm-cli <sub><sup>| Listen to SomaFM in your terminal via pure bash</sup></sub>
[![version](http://img.shields.io/badge/version-v0.1.0-blue.svg)](https://github.com/rockymadden/somafm-cli/releases)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](http://semver.org/)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](https://guides.github.com/introduction/flow/)
[![license](http://img.shields.io/badge/license-mit-blue.svg)](https://opensource.org/licenses/MIT)
[![pm](http://img.shields.io/badge/pm-zenhub-blue.svg)](https://www.zenhub.io/)
[![chat](http://img.shields.io/badge/chat-slack-blue.svg)](https://rockymadden-slack.herokuapp.com/)
[![circleci](https://circleci.com/gh/rockymadden/somafm-cli.svg?style=shield)](https://circleci.com/gh/rockymadden/somafm-cli)

[![asciicast](https://asciinema.org/a/40541.png)](https://asciinema.org/a/40541)

Be sure to help keep SomaFM commercial-free and on the air with your
[support](https://somafm.com/support/)! Groove Salad, Drone Zone, Cliqhop, Secret Agent, Space
Station Soma, Digitalis, PopTron, Suburbs of Goa and Illinois Street Lounge are trademarks of
SomaFM.com, LLC.

## Installation

### Via Homebrew:

```bash
$ brew tap rockymadden/rockymadden
$ brew install somafm-cli
```

### Via compiling from source:

```bash
$ git clone git@github.com:rockymadden/somafm-cli.git
$ cd somafm-cli
$ make
$ make install
```

## Usage

```bash
$ somafm --help
Usage:
  somafm channels
  somafm listen <channel> [--quality=<low|high|highest>]

Core Commands:
  channels    List channels
  listen      Listen to channel
```

## Examples and Recipes

### Listen to Groove Salad:

```bash
$ somafm listen groovesalad
A: 00:05:19 Cache: 10s+96k
```

### Listen to Groove Salad at highest quality:

```bash
$ somafm listen groovesalad --quality=highest
A: 00:02:25 Cache: 9s+72k
```

## License
```
The MIT License (MIT)

Copyright (c) 2016 Rocky Madden (https://rockymadden.com/)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
