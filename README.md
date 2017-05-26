# AVAIL NPMRDS Data Quality Exploration Tool

## Install/Update dependencies

```
sudo apt-get update
sudo apt-get install libgeos-dev
sudo -H pip install -U jupyter matplotlib pandas gmaps shapely utm
```

## Configure Jupyter Notebook

```
sudo jupyter nbextension enable --py --sys-prefix widgetsnbextension
sudo jupyter nbextension enable --py --sys-prefix gmaps
```

## Docs

### gmaps

* [github](https://github.com/pbugnion/gmaps)
* [api](https://jupyter-gmaps.readthedocs.io/en/latest/api.html)

### matplot colors

* [reference](http://matplotlib.org/examples/color/colormaps_reference.html)

### geo

* [utm](https://pypi.python.org/pypi/utm)

## Instructions

1. Set the value of the `COUNTY` variable to select a county
1. Set the elements of th `CORR_MATRIX_COLS` variable to select the measures
   to be included in the correlation matrix.
1. Set the value of the `COLUMN` variable to select the measure
   to appear on the map.

* You can optionally filter the data in the 'Filter' cell to focus on specific TMCs.
