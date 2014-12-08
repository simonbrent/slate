# Genoverse options

## autoHideMessages

Set to `true` to automatically hide track messages when an action (click, drag, etc.) is taken on Genoverse.

Values:

* `true`
* `false`

Default: `true`

## chr

The chromosome Genoverse will use to display features.

Default: `1`

## chromosomeSize

The length of the chromosome Genoverse will use to display features. **Required** if the `genome` option is not set.

Default: `undefined`

## colors

<aside class="warning">FIXME: are these even really needed?</aside>

Default: `{ background: '#FFFFFF', sortHandle: '#CFD4E7' }`

## container

The element Genoverse will be created inside. This can be a CSS selector, e.g. `'#genoverse'`, a jQuery selector, e.g. `$('#genoverse')`, or a DOM element, e.g. `document.getElementById('genoverse')`.
No value is given by default, resulting in a `<div>` with the id of 'genoverse' being appended to the body of the page.

Default: `undefined`
  
## defaultLength

Length of region in base pairs to use if invalid start and end coordinates are given (start is greater than end).

Default: `5000`

## dragAction

What action is performed when a mouse drag is performed on Genoverse.

Values:

* `'scroll'` dragging moves the location of focus on the chromosome
* `'select'` dragging selects a region of the chromosome
* `'off'` dragging does nothing

Default: `'scroll'`

## end

The end position of the region Genoverse will initially use to display features.

Default: `1000000`

## genome

Either the name of a file in the `js/genomes/` directory (e.g. `grch38`), or an object describing the genome. Used to determine the length of chromosomes, and how to draw their ideograms.

Default: `undefined`

## isStatic

Set to `true` if you want an instance of Genoverse which cannot be scrolled or zoomed.

Values:

* `true`
* `false`

Default: `false`

## longestLabel

Length in characters of the longest label for a feature. Used to determine the amount a requested region needs to be expanded by to ensure all features and labels are rendered correctly.

Default: `30`

## plugins

The plugins Genoverse will use.

Default: `[]`

## saveable

Set to `true` to allow users' track configurations to be saved in the browser.

Values:

* `true`
* `false`

Default: `false`

## saveKey

The default key for sessionStorage/localStorage configuration is 'genoverse'. saveKey will be appended to this if it is set, to allow different keys for different instances of Genoverse.

Default: `''` (empty string)

## start

The start position of the region Genoverse will initially use to display features.

Default: `1`

## storageType

`'sessionStorage'` will save configurations only for one browser tab, while that tab remains open. `'localStorage'` will allow configurations to be reused across all tabs of a browser, and be retained when the browser window is closed.

Values:

* `'localStorage'`
* `'sessionStorage'`

Default: `'sessionStorage'`

## trackAutoHeight

Set to `true` to automatically resize tracks so that all features in the current region are shown.

Values:

* `true`
* `false`

Default: `false`

## tracks

The tracks Genoverse will display when created.

Default: `[]`

## urlParamTemplate

How your website specifies the chromosome, start and end parameters in the URL for the genomic region you are currently looking at. `__CHR__`, `__START__` and `__END__` are placeholders for the these values.
Set to `false` if you don't want the URL to be updated as you navigate Genoverse.
<aside class="warning">Is this true?</aside>

Default: `'r=__CHR__:__START__-__END__'`
Alternative example:`'chr=__CHR__&start=__START__&end=__END__'`
  
## useHash

Determines which method the browser should use to update it's URL when navigating in Genoverse.

Values:

* `true` Force the Genoverse to change the browser's `window.location.hash`
* `false` Force the Genoverse to use`window.history.pushState` (this not supported by IE9, so it is advised not to use this option)
* `undefined` Use `window.history.pushState` if available, else use `window.location.hash`

Default: `undefined`

## wheelAction

What action is performed when the mouse wheel is used on Genoverse.

Values:

* `'zoom'` zoom in and out
* `'off'` do nothing

Default: `'off'`

## width

Width of Genoverse, in pixels.

Default: `1000`
