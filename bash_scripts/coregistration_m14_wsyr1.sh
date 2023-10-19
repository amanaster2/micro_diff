#! /bin/bash

ref=../data/dems/m14_results/wsyr1/m14_20201203_lidar.tif
stable=../data/vectors/mel_stable/MEL14_GCP_stable_LiDAR_wsyr1_new.tif

for date in 20201203 20210224 ; 
    do 
        src=../data/dems/m14_results/wsyr1/m14_${date}_sfm.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/m14_results/wsyr1/m14_${date}_sfm*/*align.tif
        echo dem_stable_zalign.py $ref $stable $align
        dem_stable_zalign.py $ref $stable $align
        newalign=../data/dems/m14_results/wsyr1/m14_${date}_sfm*/*nuth*align.tif
        echo $newalign
    done