#! /bin/bash

ref=../data/dems/k13_results/wsyr1/k13_20201109_lidar.tif
stable=../data/vectors/kid_stable/KID13_GCP_stable_LiDAR_wsyr1_new.tif

for date in 20201109 20210208 20210406 20210513 ; 
    do 
        src=../data/dems/k13_results/wsyr1/k13_${date}_sfm.tif
        echo dem_align.py $ref $src
        dem_align.py $ref $src
        align=../data/dems/k13_results/wsyr1/k13_${date}_sfm*/*align.tif
        # echo dem_stable_zalign.py $ref $stable $align
        # dem_stable_zalign.py $ref $stable $align
        # newalign=../data/dems/k13_results/wsyr1/k13_${date}_sfm*/*nuth*align.tif
        # echo $newalign
        cp $align /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr1/
        mv /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr1/*align.tif /home/adalvis/github/micro_diff/data/dems/k13_coreg/KID-13/wsyr1/k13_${date}_sfm_coreg.tif 
    done