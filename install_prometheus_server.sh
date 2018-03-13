#!/bin/bash
wget https://github.com/prometheus/prometheus/releases/download/v2.2.0/prometheus-2.2.0.linux-amd64.tar.gz
tar xvfz prometheus-*.tar.gz
cd prometheus-*
cp -rpf prometheus.yml  prometheus.yml-orig