#! /bin/bash

ref=../data/dems/m14_results/wsyr2/m14_20220309_lidar.tif

for date in 20220309 20220316 20220324 20220411 20220428 20220601 ; 
    do 
        src=../data/dems/m14_results/wsyr2/m14_${date}_sfm.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/m14_results/wsyr2/m14_${date}_sfm*/*align.tif
        cp $align /home/adalvis/github/micro_diff/data/dems/m14_coreg/MEL-14/wsyr2/
        mv /home/adalvis/github/micro_diff/data/dems/m14_coreg/MEL-14/wsyr2/*align.tif /home/adalvis/github/micro_diff/data/dems/m14_coreg/MEL-14/wsyr2/m14_${date}_sfm_coreg.tif 
    done