DROP TABLE IF EXISTS tmp_data_table;

CREATE TEMPORARY TABLE tmp_data_table AS
  SELECT *
    FROM (
      SELECT tmc,
             (max(date) - min(date) + 1) AS days_in_sample,
             ROUND(AVG(occurrences), 3) AS daily_occ_mean,
             ROUND(STDDEV_POP(occurrences), 3) AS daily_occ_stddev,
             PERCENTILE_DISC(array[0.0, 0.25, 0.50, 0.75, 1.0])
                 WITHIN GROUP (ORDER BY occurrences) AS daily_occ_quartiles
        FROM (
          SELECT tmc, 
                 date,
                 count(*) AS occurrences
            FROM ny.npmrds
            WHERE (epoch BETWEEN 72 AND 239)
              AND ((date >= DATE '20160101') AND (date < '20170101'))
            GROUP BY tmc, date
        ) AS t
      GROUP BY tmc
    ) AS t1
    NATURAL INNER JOIN (
      SELECT tmc, 
             COUNT(*) AS epochs_with_data_yr,
             ((MAX(date) - MIN(date) + 1) * 168) AS epochs_in_tmc_date_range,
             ROUND(AVG(travel_time_all_vehicles), 3) AS travel_time_mean_yr,
             ROUND(STDDEV_POP(travel_time_all_vehicles), 3) AS travel_time_stddev_yr,
             PERCENTILE_DISC(ARRAY[0.0, 0.25, 0.50, 0.75, 1.0])
                 WITHIN GROUP (ORDER BY travel_time_all_vehicles) AS travel_time_quartiles_yr
        FROM ny.npmrds
        WHERE (epoch BETWEEN 72 AND 239)
          AND ((date >= DATE '20160101') AND (date < '20170101'))
        GROUP BY tmc
    ) AS t2
    NATURAL INNER JOIN (
      SELECT tmc, 
             aadt,
             ROUND(length::NUMERIC, 3) AS length,
             latitude,
             longitude, 
             admin_level_3 AS county,
             COALESCE(road_name, road_number) AS road
        FROM static_file_data 
          FULL OUTER JOIN attribute_data USING (tmc) 
    ) AS t3;
 
CREATE INDEX tmp_data_tbl_idx ON tmp_data_table (county);


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Albany')
) TO '/tmp/Albany-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Allegany')
) TO '/tmp/Allegany-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Bronx')
) TO '/tmp/Bronx-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Broome')
) TO '/tmp/Broome-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Cattaraugus')
) TO '/tmp/Cattaraugus-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Cayuga')
) TO '/tmp/Cayuga-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Chautauqua')
) TO '/tmp/Chautauqua-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Chemung')
) TO '/tmp/Chemung-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Chenango')
) TO '/tmp/Chenango-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Clinton')
) TO '/tmp/Clinton-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Columbia')
) TO '/tmp/Columbia-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Cortland')
) TO '/tmp/Cortland-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Delaware')
) TO '/tmp/Delaware-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Dutchess')
) TO '/tmp/Dutchess-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Erie')
) TO '/tmp/Erie-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Essex')
) TO '/tmp/Essex-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Franklin')
) TO '/tmp/Franklin-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Fulton')
) TO '/tmp/Fulton-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Genesee')
) TO '/tmp/Genesee-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Greene')
) TO '/tmp/Greene-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Hamilton')
) TO '/tmp/Hamilton-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Herkimer')
) TO '/tmp/Herkimer-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Jefferson')
) TO '/tmp/Jefferson-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Kings')
) TO '/tmp/Kings-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Lewis')
) TO '/tmp/Lewis-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Livingston')
) TO '/tmp/Livingston-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Madison')
) TO '/tmp/Madison-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Monroe')
) TO '/tmp/Monroe-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Montgomery')
) TO '/tmp/Montgomery-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Nassau')
) TO '/tmp/Nassau-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'New York')
) TO '/tmp/NewYork-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Niagara')
) TO '/tmp/Niagara-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Oneida')
) TO '/tmp/Oneida-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Onondaga')
) TO '/tmp/Onondaga-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Ontario')
) TO '/tmp/Ontario-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Orange')
) TO '/tmp/Orange-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Orleans')
) TO '/tmp/Orleans-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Oswego')
) TO '/tmp/Oswego-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Otsego')
) TO '/tmp/Otsego-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Putnam')
) TO '/tmp/Putnam-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Queens')
) TO '/tmp/Queens-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Rensselaer')
) TO '/tmp/Rensselaer-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Richmond')
) TO '/tmp/Richmond-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Rockland')
) TO '/tmp/Rockland-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Saratoga')
) TO '/tmp/Saratoga-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Schenectady')
) TO '/tmp/Schenectady-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Schoharie')
) TO '/tmp/Schoharie-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Schuyler')
) TO '/tmp/Schuyler-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Seneca')
) TO '/tmp/Seneca-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Steuben')
) TO '/tmp/Steuben-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'St Lawrence')
) TO '/tmp/StLawrence-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Suffolk')
) TO '/tmp/Suffolk-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Sullivan')
) TO '/tmp/Sullivan-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Tioga')
) TO '/tmp/Tioga-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Tompkins')
) TO '/tmp/Tompkins-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Ulster')
) TO '/tmp/Ulster-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Warren')
) TO '/tmp/Warren-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Washington')
) TO '/tmp/Washington-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Wayne')
) TO '/tmp/Wayne-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Westchester')
) TO '/tmp/Westchester-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Wyoming')
) TO '/tmp/Wyoming-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


COPY (
  SELECT *
    FROM tmp_data_table
    WHERE (county = 'Yates')
) TO '/tmp/Yates-dataQualityStats.2016.csv' DELIMITER ',' CSV HEADER;


DROP TABLE tmp_data_table;
