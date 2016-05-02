<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Dades de perfil de JavaScript</title>
  </head>
  <style>
    .profile-file-title {
        font-size  : larger;
        font-weight: bold;
    }

    .label {
        font-weight: bold;
        color: darkred;
    }

    .value {
        color: grey;
    }

    .graph-box {
        border        : 1px grey solid;
        margin-top    : 5px;
        margin-bottom : 5px;
        padding-top   : 5px;
        padding-bottom: 5px;
        background    : lightgrey;
        display       : block;
    }
    
    .graph-body {
        margin-left: 3%;
        background : white;
        display    : block;
        width      : 94%;
        border     : 1px black solid;
    }

    .graph-title {
        display    : block;
        margin-left: 3%;
    }

    .left-trough,
    .below-avg-trough,
    .above-avg-trough {
        border : 0px black solid;
        margin : 0px;
        padding: 0px;
        height : 20px;
    }

    .below-avg-trough {
        border-right: 1px slategrey solid;
        border-left : 1px black solid;
        background  : darkslategrey;
    }

    .above-avg-trough {
        border-left : 1px slategrey solid;
        border-right: 1px black solid;
        background  : darkslategrey;
    }
  </style>
  <body>
    <h1>Dades de perfil de JavaScript</h1>
    <span class="label">Data de la col&middot;lecci&oacute;:</span>
    <span class="value">$full-date</span><br>
    <span class="label">Agent d'&uacute;s:</span>
    <span class="value">$user-agent</span><br>
    <span class="label">Versió del depurador de JavaScript:</span>
    <span class="value">$venkman-agent</span><br>
    <span class="label">Ordenat per:</span>
    <span class="value">$sort-key</span><br>
    <a name="section0"></a>
@-section-start
    <hr>
    <span class="section-box">
      <a name="section$section-number"></a>
      <h2 class="section-title">$section-link</h2>
      <a name="range$section-number:0"></a>
@-range-start
      <span class="range-box">
        <a name="range$section-number:$range-number"></a>
        <h3>$range-min - $range-max ms</h3>
        [ <a href="#section$section-number-prev">Fitxer anterior</a> |
        <a href="#section$section-number-next">Fitxer seg&uuml;ent</a> |
        <a href="#range$section-number:$range-number-prev">Int&egrave;rval anterior</a> |
        <a href="#range$section-number:$range-number-next">Int&egrave; seg&uuml;ent</a> ]
@-item-start
        <span class="graph-box">
          <span class="graph-title">
            <a name="item$section-number:$range-number-next:$item-number"></a>
            <a href="#item$section-number:$range-number-next:$item-number">$item-number</a>
            <a class="graph-filename" href="$item-name">$item-name</a><br>
            <span class="graph-summary">$item-summary</span>
          </span>
          <span class="graph-body">
            <img class="left-trough"
              src="data:image/gif;base64,R0lGODdhMAAwAPAAAAAAAP///ywAAAAAMAAw"
              width="$item-min-pct%"><img class="below-avg-trough"
              src="data:image/gif;base64,R0lGODdhMAAwAPAAAAAAAP///ywAAAAAMAAw"
              width="$item-below-pct%"><img class="above-avg-trough"
              src="data:image/gif;base64,R0lGODdhMAAwAPAAAAAAAP///ywAAAAAMAAw"
              width="$item-above-pct%">
          </span>
        </span>
@-item-end
      </span>
@-range-end
      <br>
    </span>
@-section-end
    <hr>
    <a href="http://www.mozilla.org/projects/venkman/">No hi ha cap tasca impossible, ni sou suficient.</a>
  </body>
</html>
