#! /bin/bash

ref=../data/dems/m14_results/wsyr2/m14_20220309_lidar.tif
stable=../data/vectors/mel_stable/MEL14_GCP_stable_LiDAR_wsyr2_new.tif

for date in 20220309 20220316 20220324 20220411 20220428 20220601 ; 
    do 
        src=../data/dems/m14_results/wsyr2/m14_${date}_sfm.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/m14_results/wsyr2/m14_${date}_sfm*/*align.tif
        echo dem_stable_zalign.py $ref $stable $align
        dem_stable_zalign.py $ref $stable $align
        newalign=../data/dems/m14_results/wsyr2/m14_${date}_sfm*/*nuth*align.tif
        echo $newalign
    done