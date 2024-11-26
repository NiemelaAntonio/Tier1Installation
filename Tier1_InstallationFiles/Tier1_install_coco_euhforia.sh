#!/bin/bash

module load EasyBuild/4.5.5

export EASYBUILD_PREFIX=/tmp/$USER/easybuild
export EASYBUILD_INSTALLPATH=$VSC_SCRATCH_PROJECTS_BASE/2024_123/$USER/easybuild

eb Tier1_coco-wice.eb Tier1_euhforia-wice.eb --trace --debug --robot

module use $EASYBUILD_INSTALLPATH/modules/all
module avail euhforia/
