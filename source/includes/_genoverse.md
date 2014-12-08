# Genoverse

## Options
<dl>
  <dt>autoHideMessages</dt>
  <dd>
    Set to <code>true</code> to automatically hide track messages when an action (click, drag, etc.) is taken on Genoverse<br />
    Values:
    <ul>
      <li><code>true</code></li>
      <li><code>false</code></li>
    </ul>
    Default: <code>true</code>
  </dd>

  <dt>colors</dt>
  <dd>
    <aside class="warning">FIXME: are these even really needed?</aside><br />
    Default: <code>{ background: '#FFFFFF', sortHandle: '#CFD4E7' }</code>
  </dd>

  <dt>container</dt>
  <dd>
    The element Genoverse will be created inside. This can be a CSS selector, e.g. <code>'#genoverse'</code>, a jQuery selector, e.g. <code>$('#genoverse')</code>, or a DOM element, e.g. <code>document.getElementById('genoverse')</code>.<br />
    No value is given by default, resulting in a <code>div</code> with the id of 'genoverse' being appended to the body of the page.<br />
    Default: <code>undefined</code>
  </dd>
  
  <dt>defaultLength</dt>
  <dd>
    Length of region in base pairs to use if invalid start and end coordinates are given (start is greater than end)<br />
    Default: <code>5000</code>
  </dd>

  <dt>dragAction</dt>
  <dd>
    What action is performed when a mouse drag is performed on Genoverse.<br />
    Values:
    <ul>
      <li><code>'scroll'</code> dragging moves the location of focus on the chromosome</li>
      <li><code>'select'</code> dragging selects a region of the chromosome</li>
      <li><code>'off'</code> dragging does nothing</li>
    </ul>
    Default: <code>'scroll'</code>
  </dd>

  <dt>genome</dt>
  <dd>
    Either the name of a file in the <code>js/genomes/</code> directory (e.g. <code>grch38</code>), or an object describing the genome. Used to determine the length of chromosomes, and how to draw their ideograms<br />
    Default: <code>undefined</code>
  </dd>

  <dt>isStatic</dt>
  <dd>
    Set to <code>true</code> if you want an instance of Genoverse which cannot be scrolled or zoomed<br />
    Values:
    <ul>
      <li><code>true</code></li>
      <li><code>false</code></li>
    </ul>
    Default: <code>false</code>
  </dd>

  <dt>longestLabel</dt>
  <dd>
    Length in characters of the longest label for a feature. Used to determine the amount a requested region needs to be expanded by to ensure all features and labels are rendered correctly.<br />
    Default: <code>30</code>
  </dd>

  <dt>plugins</dt>
  <dd>
    The plugins Genoverse will use<br />
    Default: <code>[]</code>
  </dd>

  <dt>saveable</dt>
  <dd>
    Set to <code>true</code> to allow users' track configurations to be saved in the browser<br />
    Values:
    <ul>
      <li><code>true</code></li>
      <li><code>false</code></li>
    </ul>
    Default: <code>false</code>
  </dd>

  <dt>saveKey</dt>
  <dd>
    The default key for sessionStorage/localStorage configuration is 'genoverse'. saveKey will be appended to this if it is set, to allow different keys for different instances of Genoverse<br />
    Default: <code>''</code> (empty string)
  </dd>

  <dt>storageType</dt>
  <dd>
    <code>'sessionStorage'</code> will save configurations only for one browser tab, while that tab remains open. <code>'localStorage'</code> will allow configurations to be reused across all tabs of a browser, and be retained when the browser window is closed.<br />
    Values:
    <ul>
      <li><code>'localStorage'</code></li>
      <li><code>'sessionStorage'</code></li>
    </ul>
    Default: <code>'sessionStorage'</code>
  </dd>

  <dt>trackAutoHeight</dt>
  <dd>
    Set to <code>true</code> to automatically resize tracks so that all features in the current region are shown<br />
    Values:
    <ul>
      <li><code>true</code></li>
      <li><code>false</code></li>
    </ul>
    Default: <code>false</code>
  </dd>

  <dt>tracks</dt>
  <dd>
    The tracks Genoverse will display when created<br />
    Default: <code>[]</code>
  </dd>

  <dt>urlParamTemplate</dt>
  <dd>
    How your website specifies the chromosome, start and end parameters in the URL for the genomic region you are currently looking at. <code>__CHR__</code>, <code>__START__</code> and <code>__END__</code> are placeholders for the these values.<br />
    Set to <code>false</code> if you don't want the URL to be updated as you navigate Genoverse.<br />
    <aside class="warning">Is this true?</aside><br />
    Default: <code>'r=__CHR__:__START__-__END__'</code><br />
    Alternative example:<code>'chr=__CHR__&start=__START__&end=__END__'</code>
  </dd>
  
  <dt>useHash</dt>
  <dd>
    Determines which method the browser should use to update it's URL when navigating in Genoverse<br />
    Values:
    <ul>
      <li><code>true</code> Force the Genoverse to change the browser's <code>window.location.hash</code></li>
      <li><code>false</code> Force the Genoverse to use<code>window.history.pushState</code> (this not supported by IE9, so it is advised not to use this option)</li>
      <li><code>undefined</code> Use <code>window.history.pushState</code> if available, else use <code>window.location.hash</code></li>
    </ul>
    Default: <code>undefined</code>
  </dd>

  <dt>wheelAction</dt>
  <dd>
    What action is performed when the mouse wheel is used on Genoverse. Allowed values are <code>'zoom'</code> (zoom in and out), and <code>'off'</code> (do nothing)<br />
    Values:
    <ul>
      <li><code>'zoom'</code></li>
      <li><code>'off'</code></li>
    </ul>
    Default: <code>'off'</code>
  </dd>

  <dt>width</dt>
  <dd>
    Width of Genoverse, in pixels<br />
    Default: <code>1000</code>
  </dd>
</dl>