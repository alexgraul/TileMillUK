/* ---- PALETTE ---- */

@water:#D6D6D6;
@forest:#E5F0DA;
@land:#eeefed;

Map {
  background-color:@land;
}

#natural[type='water'],
.water {
  polygon-fill:@water;
}

.natural[type='forest'] {
  polygon-fill:@forest;
}

/* These are not used, but if customizing this style you may
wish to use OSM's land shapefiles. See the wiki for info:
<http://wiki.openstreetmap.org/wiki/Mapnik#World_boundaries> */
#shoreline_300[zoom<11],
#processed_p[zoom>=11] {
  polygon-fill: @land;
}

#waterway[type='river'][zoom>=8],
#waterway[type='canal'][zoom>=8] {
  line-color: @water;
  [zoom=8] { line-width: 0.1; }
  [zoom=9] { line-width: 0.2; }
  [zoom=10] { line-width: 0.4; }
  [zoom=11] { line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
  [zoom=13]{ line-width: 1; }
  [zoom>12]{
    line-cap: round;
    line-join: round;
  }
  [zoom=14]{ line-width: 1.5; }
  [zoom=15]{ line-width: 2; }
  [zoom=16]{ line-width: 3; }
  [zoom=17]{ line-width: 4; }
  [zoom=18]{ line-width: 5; }
  [zoom=19]{ line-width: 6; }
  [zoom>19]{ line-width: 7; }
}
