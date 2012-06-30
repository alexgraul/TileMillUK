/* ---- PALETTE ---- */

@motorway: #eaf1ff; /* #90BFE0 */
@trunk: #eaf1ff;
@primary: @trunk;
@secondary: @trunk;
@road: #bbb;
@track: @road;
@footway: #6B9;
@cycleway: #69B;

/* ---- ROAD COLORS ---- */

/*.highway.line { line-color: #f00; } /* debug */

.highway[type='motorway'] {
  .line[zoom>=7]  { 
    line-color:spin(darken(@motorway,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=8] {
    line-color:@motorway;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='motorway_link'] {
  .line[zoom>=7]  { 
    line-color:spin(darken(@motorway,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=12] {
    line-color:@motorway;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='trunk'],
.highway[type='trunk_link'] {
  .line[zoom>=7] {
    line-color:spin(darken(@trunk,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=11] {
    line-color:@trunk;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='primary'],
.highway[type='primary_link'] {
  .line[zoom>=7] {
    line-color:spin(darken(@primary,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=12] {
    line-color:@primary;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='secondary'] {
  .line[zoom>=8] {
    line-color:spin(darken(@secondary,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=12] {
    line-color:@secondary;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='secondary_link'] {
  .line[zoom>=12] {
    line-color:spin(darken(@secondary,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=14] {
    line-color:@secondary;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='living_street'],
.highway[type='residential'],
.highway[type='road'],
.highway[type='tertiary'],
.highway[type='unclassified'] {
  .line[zoom>=10] {
    line-color:@road;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=14] {
    line-color:#fff;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='service'] {
  .line[zoom>=13] {
    line-color:@road;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=16] {
    line-color:#fff;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='track'] {
  .line[zoom>=13] {
    line-color:@track;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='footway'],
.highway[type='path'],
.highway[type='pedestrian'] {
  .line[zoom>=14] {
    line-color:@footway;
    line-cap:round;
    line-join:round;
  }
}

.highway[type='cycleway'] {
  .line[zoom>=14] {
    line-color:@cycleway;
    line-cap:round;
    line-join:round;
  }
}

/* ---- ROAD WIDTHS ---- */

.highway[zoom=7] {
  .line[type='motorway'] { line-width: 1.0; }
  .line[type='trunk']    { line-width: 0.8; }
  .line[type='primary']  { line-width: 0.6; }
}

.highway[zoom=8] {
  .line[type='motorway'] { line-width: 1.0; }
  .line[type='trunk']    { line-width: 0.8; }
  .line[type='primary']  { line-width: 0.5; }
  .line[type='secondary']{ line-width: 0.3; }
}

.highway[zoom=9] {
  .line[type='motorway'] { line-width: 1.0; }
  .line[type='trunk']    { line-width: 0.8; }
  .line[type='primary']  { line-width: 0.6; }
  .line[type='secondary']{ line-width: 0.4; }
}

.highway[zoom=10] {
  .line[type='motorway'] { line-width: 0.8 + 1.6; }
  .fill[type='motorway'] { line-width: 0.8; }
  
  .line[type='trunk']    { line-width: 1.4; }
  
  .line[type='primary']  { line-width: 1.2; }
  
  .line[type='secondary']{ line-width: 0.8; }
  
  .line[type='living_street'],
  .line[type='residential'],
  .line[type='road'],
  .line[type='tertiary'],
  .line[type='unclassified'] { line-width: 0.2; }
}

.highway[zoom=11] {
  .line[type='motorway']      { line-width: 1.0 + 1.8; }
  .fill[type='motorway']      { line-width: 1.0; }
  .line[type='trunk']         { line-width: 0.8 + 1.6; }
  .fill[type='trunk']         { line-width: 0.8; }
  .line[type='primary']       { line-width: 1.4; }
  .line[type='secondary']     { line-width: 1.0; }
  
  .line[type='motorway_link'] { line-width: 0.6; }
  .line[type='trunk_link']    { line-width: 0.5; }
  .line[type='primary_link']  { line-width: 0.4; }
  
  .line[type='living_street'],
  .line[type='residential'],
  .line[type='road'],
  .line[type='tertiary'],
  .line[type='unclassified'] { line-width: 0.4; }
}

.highway[zoom=12] {
  .line[type='motorway']      { line-width: 1.2 + 2; }
  .fill[type='motorway']      { line-width: 1.2; }
  .line[type='trunk']         { line-width: 1.0 + 1.8; }
  .fill[type='trunk']         { line-width: 1.0; }
  .line[type='primary']       { line-width: 0.8 + 1.6; }
  .fill[type='primary']       { line-width: 0.8; }
  .line[type='secondary']     { line-width: 0.8 + 1.6; }
  .fill[type='secondary']     { line-width: 0.8; }
  
  .line[type='motorway_link'] { line-width: 1.0 + 1.8; }
  .fill[type='motorway_link'] { line-width: 1.0; }
  .line[type='trunk_link']    { line-width: 0.8 + 1.6; }
  .fill[type='trunk_link']    { line-width: 0.8; }
  .line[type='primary_link']  { line-width: 0.8 + 1.6; }
  .fill[type='primary_link']  { line-width: 0.8; }
  .line[type='secondary_link']  { line-width: 0.8; }
  
  .line[type='living_street'],
  .line[type='residential'],
  .line[type='road'],
  .line[type='tertiary'],
  .line[type='unclassified']  { line-width: 0.6; }
}

.highway[zoom=13] {
  .line[type='motorway']      { line-width: 2.0 + 2; }
  .fill[type='motorway']      { line-width: 2.0; }
  .line[type='trunk']         { line-width: 1.4 + 2; }
  .fill[type='trunk']         { line-width: 1.4; }
  .line[type='primary']       { line-width: 1.2 + 2; }
  .fill[type='primary']       { line-width: 1.2; }
  .line[type='primary_link'],
  .line[type='secondary']     { line-width: 1.0 + 2; }
  .fill[type='primary_link'],
  .fill[type='secondary']     { line-width: 1.0; }
  
  .line[type='motorway_link'] { line-width: 1.0 + 2; }
  .fill[type='motorway_link'] { line-width: 1.0; }
  .line[type='trunk_link']    { line-width: 1.0 + 2; }
  .fill[type='trunk_link']    { line-width: 1.0; }
  .line[type='primary_link']  { line-width: 1.0 + 2; }
  .fill[type='primary_link']  { line-width: 1.0; }
  .line[type='secondary_link']{ line-width: 0.8; }
  
  .line[type='living_street'],
  .line[type='residential'],
  .line[type='road'],
  .line[type='tertiary'],
  .line[type='unclassified']  { line-width: 1.0; }
  .line[type='service']       { line-width: 0.5; }
  
  .line[type='track']         { line-width: 0.5; line-dasharray:2,3; }
}

.highway[zoom=14] {
  .line[type='motorway']      { line-width: 4 + 2; }
  .fill[type='motorway']      { line-width: 4; }
  .line[type='trunk']         { line-width: 3 + 2; }
  .fill[type='trunk']         { line-width: 3; }
  .line[type='primary']       { line-width: 2 + 2; }
  .fill[type='primary']       { line-width: 2; }
  .line[type='secondary']     { line-width: 2 + 2; }
  .fill[type='secondary']     { line-width: 2; }
  
  .line[type='motorway_link'] { line-width: 1.4 + 2; }
  .fill[type='motorway_link'] { line-width: 1.4; }
  .line[type='trunk_link']    { line-width: 1.2 + 2; }
  .fill[type='trunk_link']    { line-width: 1.2; }
  .line[type='primary_link']  { line-width: 1.0 + 2; }
  .fill[type='primary_link']  { line-width: 1.0; }
  .line[type='secondary_link']{ line-width: 0.8 + 2; }
  .fill[type='secondary_link']{ line-width: 0.8; }
  
  .line[type='living_street'],
  .line[type='residential'],
  .line[type='road'],
  .line[type='tertiary'],
  .line[type='unclassified']  { line-width: 1.6 + 1.6; }
  .fill[type='living_street'],
  .fill[type='residential'],
  .fill[type='road'],
  .fill[type='tertiary'],
  .fill[type='unclassified']  { line-width: 1.6; }
  .line[type='service']       { line-width: 0.6; }
  
  .line[type='track']         { line-width: 0.6; line-dasharray:2,3; }
  
  .line[type='cycleway'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'] {
    line-dasharray:1,2;
    line-width:0.6;
  }
}

.highway[zoom=15] {
  .line[type='motorway']      { line-width: 6 + 2; }
  .fill[type='motorway']      { line-width: 6; }
  .line[type='trunk']         { line-width: 5 + 2; }
  .fill[type='trunk']         { line-width: 5; }
  .line[type='primary']       { line-width: 4 + 2; }
  .fill[type='primary']       { line-width: 4; }
  .line[type='secondary']     { line-width: 4 + 2; }
  .fill[type='secondary']     { line-width: 4; }
  
  .line[type='motorway_link'] { line-width: 2 + 2; }
  .fill[type='motorway_link'] { line-width: 2; }
  .line[type='trunk_link']    { line-width: 1.6 + 2; }
  .fill[type='trunk_link']    { line-width: 1.6; }
  .line[type='primary_link']  { line-width: 1.4 + 2; }
  .fill[type='primary_link']  { line-width: 1.4; }
  .line[type='secondary_link']{ line-width: 1.0 + 2; }
  .fill[type='secondary_link']{ line-width: 1.0; }
  
  .line[type='living_street'],
  .line[type='residential'],
  .line[type='road'],
  .line[type='tertiary'],
  .line[type='unclassified']  { line-width: 4 + 2; }
  .fill[type='living_street'],
  .fill[type='residential'],
  .fill[type='road'],
  .fill[type='tertiary'],
  .fill[type='unclassified']  { line-width: 4; }
  .line[type='service']       { line-width: 1; }
  
  .line[type='track']         { line-width: 1; line-dasharray:2,3; }
  
  .line[type='cycleway'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'] {
    line-dasharray:1,2;
    line-width:0.8;
  }
}

.highway[zoom=16] {
  .line[type='motorway']      { line-width: 9 + 3; }
  .fill[type='motorway']      { line-width: 9; }
  .line[type='trunk']         { line-width: 8 + 2.5; }
  .fill[type='trunk']         { line-width: 8; }
  .line[type='primary']       { line-width: 7 + 2; }
  .fill[type='primary']       { line-width: 7; }
  .line[type='secondary']     { line-width: 6 + 2; }
  .fill[type='secondary']     { line-width: 6; }
  
  .line[type='motorway_link'] { line-width: 3 + 2.5; }
  .fill[type='motorway_link'] { line-width: 3; }
  .line[type='trunk_link']    { line-width: 2 + 2; }
  .fill[type='trunk_link']    { line-width: 2; }
  .line[type='primary_link']  { line-width: 1.8 + 2; }
  .fill[type='primary_link']  { line-width: 1.8; }
  .line[type='secondary_link']{ line-width: 1.4 + 2; }
  .fill[type='secondary_link']{ line-width: 1.4; }
  
  .line[type='living_street'],
  .line[type='residential'],
  .line[type='road'],
  .line[type='tertiary'],
  .line[type='unclassified']  { line-width: 6 + 2; }
  .fill[type='living_street'],
  .fill[type='residential'],
  .fill[type='road'],
  .fill[type='tertiary'],
  .fill[type='unclassified']  { line-width: 6; }
  .line[type='service']       { line-width: 1.4 + 2; }
  .fill[type='service']       { line-width: 1.4; }
  
  .line[type='track']         { line-width: 1.2; line-dasharray:2,3; }
  
  .line[type='cycleway'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'] {
    line-dasharray:1,2;
    line-width:1.0;
  }
}

.highway[zoom>=17] {
  .line[type='motorway']      { line-width: 13 + 3; }
  .fill[type='motorway']      { line-width: 13; }
  .line[type='trunk']         { line-width: 10 + 2.5; }
  .fill[type='trunk']         { line-width: 10; }
  .line[type='primary']       { line-width: 9 + 2; }
  .fill[type='primary']       { line-width: 9; }
  .line[type='secondary']     { line-width: 8 + 2; }
  .fill[type='secondary']     { line-width: 8; }
  
  .line[type='motorway_link'] { line-width: 4 + 2.5; }
  .fill[type='motorway_link'] { line-width: 4; }
  .line[type='trunk_link']    { line-width: 3.5 + 2; }
  .fill[type='trunk_link']    { line-width: 3.5; }
  .line[type='primary_link']  { line-width: 3 + 2; }
  .fill[type='primary_link']  { line-width: 3; }
  .line[type='secondary_link']{ line-width: 2.5 + 2; }
  .fill[type='secondary_link']{ line-width: 2.5; }
  
  .line[type='living_street'],
  .line[type='residential'],
  .line[type='road'],
  .line[type='tertiary'],
  .line[type='unclassified']  { line-width: 8 + 2; }
  .fill[type='living_street'],
  .fill[type='residential'],
  .fill[type='road'],
  .fill[type='tertiary'],
  .fill[type='unclassified']  { line-width: 8; }
  
  .line[type='service']       { line-width: 2 + 2; }
  .fill[type='service']       { line-width: 2; }
  
  .line[type='track']         { line-width: 1.4; line-dasharray:2,3; }
  
  .line[type='cycleway'],
  .line[type='footway'],
  .line[type='path'],
  .line[type='pedestrian'] {
    line-dasharray:2,3;
    line-width:1.2;
  }
}

/* ---- ONE WAY ARROWS ---- */

.highway.fill::oneway_arrow[zoom>15][ONEWAY='yes'] {
  marker-type:arrow;
  marker-width:1;
  marker-line-width:1;
  marker-line-opacity:0.5;
  marker-line-color:#fff;
  marker-spacing: 200;
  marker-fill:spin(darken(@motorway,50),-10);
  marker-opacity:0.8;
}
