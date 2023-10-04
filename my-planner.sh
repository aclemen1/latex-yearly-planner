#!/bin/sh
PLANNER_YEAR=2023 \
PASSES=1 \
CFG="cfg/base.yaml,cfg/rm2.base.yaml,cfg/template_months_on_side.yaml,cfg/rm2.mos.default.yaml" \
NAME="rm2.mos.default.2023" \
./single.sh
