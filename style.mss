/**********************************************************

Open Streets, DC
================

*An example of street-level map design.*

Data used by this map is © OpenStreetMap contributors, 
CC-BY-SA. See <http://openstreetmap.org> for more info.

This map makes use of OpenStreetMap shapefile extracts
provided by CloudMade at <http://downloads.cloudmade.com>.
You can swap out the DC data with any other shapefiles 
provided by CloudMade to get a map of your area.

To prepare a CloudMade shapefiles zip package for TileMill,
download it and run the following commands:

    unzip your_area.shapefiles.zip
    cd your_area.shapefiles
    shapeindex *.shp
    for i in *.shp; do \
        zip `basename $i .shp` `basename $i shp`*; done

***********************************************************/

/* ---- PALETTE ---- */

@water:#c0d8ff;
@forest:#cea;
@land:#eee;

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
