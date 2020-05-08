#!/bin/bash

#Use medcon to convert a nifti file to dicom

filename=$1

f=$(basename "$filename" | cut -d. -f1)

mkdir "$f"_dcm

ln -s $PWD/$filename $PWD/"$f"_dcm/.

cd "$f"_dcm

medcon -f $filename -split3d -c dicom #-o $PWD/"$f"_dcm/

cd ..




