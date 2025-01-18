#!/bin/bash

rm -rf dist build *.egg-info
python -m build
pip install $(ls dist/ziploc-*.whl) --force-reinstall
pip uninstall ziploc
