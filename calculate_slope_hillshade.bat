ogr2ogr -sql "SELECT * FROM gadm36_SVN_2 WHERE NAME_2='Izola'” -f “ESTRI Shapefile” Izola.shp gadm36_SVN.gpkg gadm36_SVN_2 

gdalwarp -t_srs EPSG:32632 -cutline koper.shp dem_merge.tif dem_merge_neu.tif 

gdaldem slope dem_merge_neu.tif dem_merge_neu_slope.tif 

gdaldem hillshade dem_merge_neu.tif dem_merge_neu_hillshade.tif 