---
title: API Reference

toc_footers:
  - <a href='http://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - genoverse

search: true
---

# Introduction

Genoverse is a portable, customizable, back-end independent JavaScript and HTML5 based genome browser which allows the user to explore data interactively. 

Genoverse can be installed on any website and show data from a wide range of online or local sources, working with a variety of formats, such as XML, JSON, GFF, GFF3, BED, and can be customised to parse and display any data source as required. 

# Getting started

```html
<script type="text/javascript" src="/path/to/genoverse/genoverse.combined.js">
  {
    container : '#genoverse',
    genome    : 'grch38',
    chr       : 1,
    start     : 1,
    end       : 100000,
    plugins   : [ 'controlPanel', 'karyotype', 'trackControls', 'resizer', 'tooltips', 'fileDrop' ],
    tracks    : [
      Genoverse.Track.Scalebar,
      Genoverse.Track.extend({
        name       : 'Sequence',
        controller : Genoverse.Track.Controller.Sequence,
        model      : Genoverse.Track.Model.Sequence.Ensembl,
        view       : Genoverse.Track.View.Sequence,
        100000     : false,
        resizable  : 'auto'
      }),
      Genoverse.Track.Gene
    ]
  }
</script>
```

Genoverse can be easily integrated into your websites. To install:

1. Clone Genoverse from github: `git clone https://github.com/EugeneBragin/Genoverse.git`
2. Configure your web server so that it can read the Genoverse directory's `js`, `css` and `i` directories as static content
3. Embed Genoverse in your site. An example of how to do this can be seen on the right.



