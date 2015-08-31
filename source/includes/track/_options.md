# Genoverse.Track options

## height

The height in pixels of the track's container element.

Default: `12`

## margin

The spacing between this track and the next one.

Default: `2`

## resizable

Whether the track is resizable or not.

Values:

* `true` the user can resize the track
* `false` the user cannot resize the track
* `'auto'` the track will automatically resize to show all features, but the user cannot resize it themselves

Default: `true`

## border

Set to `false` to stop the track having a bottom border.

Values:

* `true`
* `false`

Default: `true`

## unsortable

Set to `true` to stop the user being able to change the track's ordering.

Values:

* `true`
* `false`

Default: `false`

## name

The name of the track, which appears in its label.

Default: `undefined`

## autoHeight

Set to `true` to automatically resize the track so that all features in the current region are shown.
Takes precedence over the [`trackAutoHeight`](#trackautoheight) option if it is not `undefined`.

Values:

* `true`
* `false`
* `undefined`

Default: `undefined`

## hideEmpty

Set to `true` to hide the track when there are no features, if the track is automatically resizing.
Takes precedence over the [`hideEmptyTracks`](#hideemptytracks) option if it is not `undefined`.

Values:

* `true`
* `false`
* `undefined`

Default: `undefined`
