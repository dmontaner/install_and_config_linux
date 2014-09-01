#!/bin/sh
#nemo_action_r_cmd_batch-sh
#2013-12-09 dmontaner@cipf.es
#execute an R scripts in R CMD BATCH from Nemo

## Argument $1 should catch %F, the full path to the file to be executed.

mydir=`dirname $1`
cd $mydir

R CMD BATCH --no-save --no-restore $1
