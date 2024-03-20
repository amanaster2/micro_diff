# Road Micro-Topography Evolution

Quantifying small-scale rut development on gravel forest roads using digital elevation modeling (DEM) differencing. 

## Installation

Download and install [Miniconda](https://docs.conda.io/en/latest/miniconda.html)  

After installing Miniconda set up [Mamba](https://mamba.readthedocs.io/en/latest/installation.html) (optional but recommended)
```
$ conda install mamba -n base -c conda-forge
```
Clone the repo and set up the conda environment  

```
$ git clone https://github.com/amanaster2/micro_diff.git
$ cd ./micro_diff
$ mamba env create -f micro_diff_env.yml
$ conda activate micro_diff
$ pip install -e .
```

## Repository Navigation
`notebooks` contains step-by-step Jupyter notebooks to analyze rut development  
`micro` contains .py files that contain functions for streamlining of code


## Analysis Steps
1. Run `clip_rasters.ipynb`
    
2. Run `coregistration.ipynb`
3. Run `raster_analysis.ipynb`
4. Run `stats.ipynb`
5. Move to [ll_micro](https://github.com/amanaster2/ll_micro/tree/main) and follow steps in that `README.md`.
<!In ll_micro:
6. Run first cell of `resample_dems.ipynb`
7. Run `flowAccumulation_k13.ipynb` and `flowAccumulation_m14.ipynb`
8. Run the rest of `resample_dems.ipynb`>
6. Run `flow_pathway_analysis.ipynb`

## Third-Party Tools
- [Geospatial Time Series Analysis (gtsa)](https://github.com/friedrichknuth/gtsa/tree/main)
