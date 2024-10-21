#! /bin/bash

ref=../data/dems/k13_results/wsyr2/k13_20211007_lidar.tif

for date in 20211008 20220208 20220503 20220530 20220531 ; 
    do 
        src=../data/dems/k13_results/wsyr2/k13_${date}_*.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/k13_results/wsyr2/k13_${date}_*/*align.tif
        cp $align /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr2/
        mv /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr2/*align.tif /home/adalvis/github/micro_diff/data/dems/KID-13/wsyr2/k13_${date}_coreg.tif 
    done