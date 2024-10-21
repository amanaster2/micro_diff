#! /bin/bash

ref=../data/dems/k13_results/dsyr1/k13_20210604_lidar.tif

for date in 20210605 20210819 20210912 20210913; 
    do 
        src=../data/dems/k13_results/dsyr1/k13_${date}_*.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/k13_results/dsyr1/k13_${date}_*/*align.tif
        cp $align /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/dsyr1/
        mv /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/dsyr1/*align.tif /home/adalvis/github/micro_diff/data/dems/KID-13/dsyr1/k13_${date}_coreg.tif 
    done

