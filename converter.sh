#!/bin/bash
counter=1
while [ $counter -le 1222 ]
do
echo $counter
y=$(printf "%04d" $counter)
contentFileName=content$y.png
styleFileName=style$y.png
outputFileName=output$y.png
echo $contentFileName
echo $styleFileName
th neural_style.lua -style_image style_sequence/$styleFileName -content_image image_sequence/$contentFileName -output_image output/$outputFileName -model_file models/nin_imagenet_conv.caffemodel -proto_file models/train_val.prototxt -gpu 0 -backend clnn -num_iterations 1000 -seed 123 -content_layers relu0,relu3,relu7,relu12 -style_layers relu0,relu3,relu7,relu12 -content_weight 10 -style_weight 1000 -image_size 1080 -optimizer adam
((counter++))
done

echo All done
