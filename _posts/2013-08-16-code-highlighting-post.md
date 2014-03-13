---
layout: post
title: Syntax Highlighting Post
description: "Demo post displaying the various ways of highlighting code in Markdown."
category: articles
tags: [sample post, code, highlighting]
image:
  feature: so-simple-sample-image-5.jpg
  credit: Michael Rose
  creditlink: http://mademistakes.com
comments: true
share: true
---

Syntax highlighting is a feature that displays source code, in different colors and fonts according to the category of terms. This feature facilitates writing in a structured language such as a programming language or a markup language as both structures and syntax errors are visually distinct. Highlighting does not affect the meaning of the text itself; it is intended only for human readers.[^1]

[^1]: <http://en.wikipedia.org/wiki/Syntax_highlighting>

### Pygments Code Blocks

To modify styling and highlight colors edit `/assets/less/pygments.less` and compile `main.less` with your favorite preprocessor. Or edit `main.css` if that's your thing, the classes you want to modify all begin with `.highlight`.
