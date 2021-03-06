
#!/bin/bash                                                                     

## set name of PBS job                                                           
#PBS -N basic_submission_script                                                             

## send email notification when execution begins(b), ends (e) or aborts(a)
#PBS -m bea  

## send email to this address
## **** update this address to your email ****
#PBS -M username@bigelow.org

## send the environment variables with job 
#PBS -V

## set the queue                                                                          
#PBS -q route                                                                   

## give job 10 minutes                        
#PBS -l walltime=00:10:00 

## use one compute node and one cpu (this will default to use 2gb of memory)                                                      
#PBS -l select=1:ncpus=1                                                        
                                                              
## output files placed in output directory in the user vcc’s home directory 
## **** to use this script change vcc to your Bigelow username **** 
#PBS -e /home/vcc/output                                                           
#PBS -o /home/vcc/output                                                          


## jobs to submit                                                               
echo start
/bin/sleep 10
echo finished
