#! /bin/bash

ref=../data/dems/k13_results/wsyr1/k13_20201109_lidar.tif

for date in 20201109 20210208 20210406 20210513 ; 
    do 
        src=../data/dems/k13_results/wsyr1/k13_${date}_sfm.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/k13_results/wsyr1/k13_${date}_sfm*/*align.tif
        cp $align /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr1/
        mv /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr1/*align.tif /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr1/k13_${date}_sfm_coreg.tif 
    done