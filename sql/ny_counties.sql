COPY (
  SELECT DISTINCT admin_level_3
    FROM static_file_data_with_state_view
    WHERE state = 'ny'
    ORDER BY admin_level_3
) TO '/tmp/counties.csv';
