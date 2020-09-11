@hikingway-fill: salmon;
@hikingway-fill-noaccess: #bbbbbb;
@cycleway-fill: blue;
@cycleway-fill-noaccess: #9999ff;

@hikingway-casing: @default-casing;
@steps-casing: @default-casing;
@cycleway-casing: @default-casing;

@hikingway-width-z14:               3.7;
@hikingway-width-z15:               4;
@hikingway-width-z16:               4.3;
@hikingway-width-z18:               4.3;
@hikingway-width-z19:               4.6;

@cycleway-width-z13:              0.7;
@cycleway-width-z15:              0.9;
@cycleway-width-z16:              0.9;
@cycleway-width-z18:              1;
@cycleway-width-z19:              1.3;

@hikingway-oneway-arrow-color:      darken(@hikingway-fill, 35%);
@steps-oneway-arrow-color:        darken(@steps-fill, 35%);
@cycleway-oneway-arrow-color:     darken(@cycleway-fill, 25%);

#hiking-ways {
      [zoom >= 14] {
        line/line-color: @hikingway-fill;
        line/line-width: @hikingway-width-z14;
        [zoom >= 15][int_surface = 'paved'] {
          line/line-dasharray: 2,3.5;
          line/line-width: @hikingway-width-z15;
          [zoom >= 16] {
            line/line-dasharray: 3,3.5;
            line/line-width: @hikingway-width-z16;
          }
          [zoom >= 17] {
            line/line-dasharray: 3,3;
          }
          [zoom >= 18] {
            line/line-width: @hikingway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @hikingway-width-z19;
          }
        }
        [zoom >= 15][int_surface = null] {
          line/line-color: @hikingway-fill;
          line/line-width: @hikingway-width-z15;
          [zoom >= 16] {
            line/line-dasharray: 1,4,2,3;
            line/line-width: @hikingway-width-z16;
          }
          [zoom >= 18] {
            line/line-width: @hikingway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @hikingway-width-z19;
          }
        }
        [zoom >= 15][int_surface = 'unpaved'] {
          line/line-color: @hikingway-fill;
          line/line-width: @hikingway-width-z15;
          [zoom >= 16] {
            line/line-width: @hikingway-width-z16;
          }
          [zoom >= 18] {
            line/line-width: @hikingway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @hikingway-width-z19;
          }
        }
      }
 }

 #hiking-text-point[zoom >= 10] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @placenames;
    text-face-name: @book-fonts;
    text-halo-fill: @standard-halo-fill;
    text-halo-radius: @standard-halo-radius * 1.5;
    text-wrap-width: 45; // 4.5 em
    text-line-spacing: -0.8; // -0.08 em
    text-margin: 7.0; // 0.7 em
    [zoom >= 17] {
      text-size: 12;
      text-wrap-width: 60; // 5.0 em
      text-line-spacing: -0.60; // -0.05 em
      text-margin: 8.4; // 0.7 em
      text-fill: @placenames-light;
      text-halo-fill: white;
    }
  }
 