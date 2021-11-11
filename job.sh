#!/bin/bash
#SBATCH --job-name=LG18P
#SBATCH --time=1-00:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=8000
#SBATCH -o outputs/WI/diagnostics/WI_LG18P_WVAP-BVAP-HVAP.txt
#SBATCH -e outputs/WI/diagnostics/WI_LG18P_WVAP-BVAP-HVAP.txt

python ei.py -state WI -elec LG18P -g WVAP -g BVAP -g HVAP -num_tunes 10 -num_draws 10 
python viz.py -state WI -elec LG18P -g WVAP -g BVAP -g HVAP 
python summary.py -state WI -elec LG18P -g WVAP -g BVAP -g HVAP 
