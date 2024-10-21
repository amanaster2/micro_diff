#! /bin/bash

ref=../data/dems/m14_results/wsyr1/m14_20201203_lidar.tif

for date in 20201204 20210224 ; 
    do 
        src=../data/dems/m14_results/wsyr1/m14_${date}_*.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/m14_results/wsyr1/m14_${date}_*/*align.tif
        cp $align /home/adalvis/github/micro_diff/data/dems/m14_coreg/MEL-14/wsyr1/
        mv /home/adalvis/github/micro_diff/data/dems/m14_coreg/MEL-14/wsyr1/*align.tif /home/adalvis/github/micro_diff/data/dems/MEL-14/wsyr1/m14_${date}_coreg.tif 
    done