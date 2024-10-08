#!/bin/bash

# Script pour soumettre le job au cluster
spark-submit \
    --master yarn \
    --deploy-mode cluster \
    --driver-memory 4g \
    --executor-memory 2g \
    --executor-cores 2 \
    --num-executors 3 \
    --name "TP2_Ventes_Analysis" \
    --files ventes.txt \
    tp2_spark_rdd.py cluster