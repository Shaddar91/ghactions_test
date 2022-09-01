#!/bin/bash
export PARENT_DIR="$(basename $(dirname `pwd`))"
export DIR="$(basename `pwd`)"

cat ../provider.tf.tmpl | envsubst > provider.auto.tf
ln -s ../shared-variables.tf ./shared-variables.auto.tf
terraform init  