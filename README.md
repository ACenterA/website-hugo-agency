### Serverless CMS

A Fast and Flexible CMS for Static Site Generator demo for GoHugo / Hugo


[GoHugo Website](https://gohugo.io) |
[Forum](https://discourse.gohugo.io) |
[Documentation](https://gohugo.io/overview/introduction/) |
[Twitter](http://twitter.com/acentera)

## Overview

Hugo is a static HTML and CSS website generator written in [Go][].
It is optimized for speed, easy use and configurability.
Hugo takes a directory with content and templates and renders them into a full HTML website.

We have built a small API Around HUGO and used [GrapesJs project](https://github.com/artf/grapesjs). Special thanks to Artur Arseniev for the GrapeJs FrameWork

Our [GrapeJS Fork](https://github.com/ACenterAInc/grapesjs), which includes many custom changes that were made quickly for a Proof of Concept.

Hugo relies on Markdown files with front matter for meta data.
And you can run Hugo from any directory.
This works well for shared hosts and other systems where you don’t have a privileged account.

Hugo renders a typical website of moderate size in a fraction of a second.
A good rule of thumb is that each piece of content renders in around 1 millisecond.

Hugo is designed to work well for any kind of website including blogs, tumbles and docs.

#### Supported Architectures

Hugo provides pre-built Hugo binaries for Windows, Linux, FreeBSD, NetBSD and macOS (Darwin) and [Android](https://gist.github.com/bep/a0d8a26cf6b4f8bc992729b8e50b480b) for x64, i386 and ARM architectures.

Our current Docker Image is currently only built for Linux. We have added a small API to the Hugo Go framework, which is not yet opensource as it was maintly for a Proof of Concept.

## Choose How to Install

First, install Docker and have docker-compose

Second: After you have cloned this repository or a Fork simply type `docker-compose up`

Finally visit htt://localhost:1313/test.html and feel free to update the components and click on the save button at the top.


### Support

Anyone that would like to participate building a new Opensource Local CMS for Static Generators [Join on Gitter](https://gitter.im/ACenterA/serverlesscms)
