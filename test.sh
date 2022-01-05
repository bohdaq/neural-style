#install torch from https://github.com/bohdaq/torch
#then execute this script
th neural_style.lua -style_image style.jpg -content_image content.jpg -output_image output.jpg -model_file models/nin_imagenet_conv.caffemodel -proto_file models/train_val.prototxt -gpu 0 -backend clnn -num_iterations 1000 -seed 123 -content_layers relu0,relu3,relu7,relu12 -style_layers relu0,relu3,relu7,relu12 -content_weight 10 -style_weight 1000 -image_size 1080 -optimizer adam
#you should see output.jpg in root folder as a result of execution
