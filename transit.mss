Map {
//  background-color: #b8dee6;
  buffer-size:256
}
/* colors */
@sfmta:     #e89f48;
@actransit: #217d29;
  
#caltrain[zoom>=7] {
  line-color:#f0422d;
  line-width: .7;
}

@morn_lte4: 10; @morn_gt4: 5;
@morn_gt8: 1;  @morn_gt15: .5; @morn_gt30: .25;
  
#sfmta [zoom>=8] {
  line-color: @sfmta;
  line-width: 0;

  [zoom>=8][zoom<12] {
    [mon_morning > 30]                    {line-width: 0;}
    [mon_morning > 15][mon_morning <= 30] {line-width: 0;}
    [mon_morning > 8][mon_morning <= 15]  {line-width: 0;} //@morn_gt8 / 4; line-opacity: 0.8}
    [mon_morning > 4][mon_morning <= 8]   {line-width: 0;} //@morn_gt4 / 4; line-opacity: 1}
    [mon_morning <= 4]                    {line-width: .25; }
	[zoom>=10] {
      [mon_morning > 4][mon_morning <= 8]   {line-width: .25;} //@morn_gt4 / 4; line-opacity: 1}
      [mon_morning <= 4]                    {line-width: .75; }
      }
  }

  [zoom>=12][zoom<15] {
    [mon_morning > 30]                    {line-width: 0;}
    [mon_morning <= 30][mon_morning > 15] {line-width: @morn_gt15 / 4; line-opacity: 0.6}
    [mon_morning <= 15][mon_morning > 8]  {line-width: @morn_gt8 / 4; line-opacity: 0.8}
    [mon_morning <= 8][mon_morning > 4]   {line-width: @morn_gt4 / 4; line-opacity: 1}
    [mon_morning <= 4]                    {line-width: @morn_lte4 / 4; line-opacity: 1}
  }

  [zoom>=15] {
    [mon_morning > 30]                    {line-width: @morn_gt30; line-opacity: 0.4}
    [mon_morning <= 30][mon_morning > 15] {line-width: @morn_gt15; line-opacity: 0.6}
    [mon_morning <= 15][mon_morning > 8]  {line-width: @morn_gt8; line-opacity: 0.8}
    [mon_morning <= 8][mon_morning > 4]   {line-width: @morn_gt4; line-opacity: 1}
    [mon_morning <= 4]                    {line-width: @morn_lte4; line-opacity: 1}
  }
}


#lightrail_sfmta [zoom>=8] {
  line-width:2;
    [route_short_name = 'F']  {line-color: #eeb166}
    [route_short_name = 'J']  {line-color: #eeb166}
    [route_short_name = 'KT'] {line-color: #D11848}
    [route_short_name = 'L']  {line-color: #902C8E}
    [route_short_name = 'M']  {line-color: #008653}
    [route_short_name = 'N']  {line-color: #005499}
  
  [zoom>=8][zoom<12] {
    [mon_morning > 30]                    {line-width: 0;}
    [mon_morning > 15][mon_morning <= 30] {line-width: 0;}
    [mon_morning > 8][mon_morning <= 15]  {line-width: 0;} //@morn_gt8 / 4; line-opacity: 0.8}
    [mon_morning > 4][mon_morning <= 8]   {line-width: .25;} //@morn_gt4 / 4; line-opacity: 1}
    [mon_morning <= 4]                    {line-width: .25; }
    [zoom>=10] {
      [mon_morning > 4][mon_morning <= 8]   {line-width: .5;} //@morn_gt4 / 4; line-opacity: 1}
      [mon_morning <= 4]                    {line-width: .75; }
    }
  }

  [zoom>=12][zoom<15] {
    [mon_morning > 30]                    {line-width: 0;}
    [mon_morning <= 30][mon_morning > 15] {line-width: @morn_gt15 / 3; line-opacity: 0.6}
    [mon_morning <= 15][mon_morning > 8]  {line-width: @morn_gt8 / 3; line-opacity: 0.8}
    [mon_morning <= 8][mon_morning > 4]   {line-width: @morn_gt4 / 3; line-opacity: 1}
    [mon_morning <= 4]                    {line-width: @morn_lte4 / 3; line-opacity: 1}
  }

  [zoom>=15] {
    [mon_morning > 30]                    {line-width: @morn_gt30; line-opacity: 0.4}
    [mon_morning <= 30][mon_morning > 15] {line-width: @morn_gt15; line-opacity: 0.6}
    [mon_morning <= 15][mon_morning > 8]  {line-width: @morn_gt8; line-opacity: 0.8}
    [mon_morning <= 8][mon_morning > 4]   {line-width: @morn_gt4; line-opacity: 1}
    [mon_morning <= 4]                    {line-width: @morn_lte4; line-opacity: 1}
  }

}
