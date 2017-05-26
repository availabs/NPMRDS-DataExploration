COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Albany')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Albany.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Allegany')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Allegany.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Bronx')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Bronx.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Broome')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Broome.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Cattaraugus')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Cattaraugus.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Cayuga')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Cayuga.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Chautauqua')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Chautauqua.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Chemung')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Chemung.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Chenango')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Chenango.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Clinton')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Clinton.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Columbia')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Columbia.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Cortland')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Cortland.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Delaware')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Delaware.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Dutchess')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Dutchess.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Erie')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Erie.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Essex')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Essex.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Franklin')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Franklin.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Fulton')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Fulton.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Genesee')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Genesee.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Greene')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Greene.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Hamilton')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Hamilton.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Herkimer')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Herkimer.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Jefferson')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Jefferson.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Kings')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Kings.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Lewis')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Lewis.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Livingston')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Livingston.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Madison')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Madison.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Monroe')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Monroe.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Montgomery')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Montgomery.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Nassau')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Nassau.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'New York')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/NewYork.geojson';

COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Niagara')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Niagara.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Oneida')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Oneida.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Onondaga')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Onondaga.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Ontario')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Ontario.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Orange')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Orange.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Orleans')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Orleans.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Oswego')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Oswego.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Otsego')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Otsego.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Putnam')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Putnam.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Queens')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Queens.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Rensselaer')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Rensselaer.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Richmond')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Richmond.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Rockland')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Rockland.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Saratoga')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Saratoga.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Schenectady')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Schenectady.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Schoharie')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Schoharie.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Schuyler')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Schuyler.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Seneca')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Seneca.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Steuben')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Steuben.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'St Lawrence')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/StLawrence.geojson';
 

COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Suffolk')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Suffolk.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Sullivan')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Sullivan.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Tioga')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Tioga.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Tompkins')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Tompkins.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Ulster')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Ulster.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Warren')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Warren.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Washington')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Washington.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Wayne')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Wayne.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Westchester')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Westchester.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Wyoming')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Wyoming.geojson';


COPY (
  SELECT row_to_json(fc)
    FROM (
      SELECT 'FeatureCollection' AS type,
             array_to_json(array_agg(f)) AS features
        FROM (
          SELECT 'Feature' AS type,
                 ST_AsGeoJSON(wkb_geometry)::json AS geometry, 
                 JSON_BUILD_OBJECT(
                   'tmc',
                   tmc
                 ) As properties
            FROM tmc_multilines
              NATURAL INNER JOIN static_file_data_with_state_view
            WHERE (admin_level_3 = 'Yates')
              AND (state = 'ny')
        ) AS f
    ) AS fc
) TO '/tmp/Yates.geojson';


