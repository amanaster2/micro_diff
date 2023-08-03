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


## Third-Party Tools
- [Geospatial Time Series Analysis (gtsa)](https://github.com/friedrichknuth/gtsa/tree/main)
