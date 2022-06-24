#!/bin/bash

python main.py --maxdisp 192 \
               --model stackhourglass \
               --epochs 10 \
               --savemodel ./trained/



python finetune.py --maxdisp 192 \
                   --model stackhourglass \
                   --datatype 2015 \
                   --epochs 300 \
                   --loadmodel ./trained/checkpoint_10.tar \
                   --savemodel ./trained/

