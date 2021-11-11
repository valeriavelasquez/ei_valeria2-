#!/bin/bash

num=10

for elec in "LG18P" #"GOV18P" "SOS18P"
do
  python submit_jobs.py -state WI -num_tunes $num -num_draws $num -run_elec $elec
  #sleep 30
done
