#! /bin/bash

ref=../data/dems/k13_results/wsyr1/k13_20201109_lidar.tif

for date in 20201110 20210208 20210406 20210512 20210513 ; 
    do 
        src=../data/dems/k13_results/wsyr1/k13_${date}_*.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/k13_results/wsyr1/k13_${date}_*/*align.tif
        cp $align /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr1/
        mv /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr1/*align.tif /home/adalvis/github/micro_diff/data/dems/KID-13/wsyr1/k13_${date}_coreg.tif 
    done