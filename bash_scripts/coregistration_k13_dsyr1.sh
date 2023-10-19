#! /bin/bash

ref=../data/dems/k13_results/dsyr1/k13_20210604_lidar.tif
stable=../data/vectors/kid_stable/KID13_GCP_stable_LiDAR_dsyr1_new.tif

for date in 20210604 20210819 20210913 ; 
    do 
        src=../data/dems/k13_results/dsyr1/k13_${date}_sfm.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/k13_results/dsyr1/k13_${date}_sfm*/*align.tif
        echo dem_stable_zalign.py $ref $stable $align
        dem_stable_zalign.py $ref $stable $align
        newalign=../data/dems/k13_results/dsyr1/k13_${date}_sfm*/*nuth*align.tif
        echo $newalign
    done