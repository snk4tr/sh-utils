# SH Utils

This repo is a collection of bash scripts, which help to manage daily tasks. Use in as an agregator of ideas rather 
than a container with actually useful programs.

### How to use

The easiest and the most convenient way to use such mini-programs is to remove `.sh` extension, put them in 
`~/.local/bin` folder, then export path to them in order to make them globally available. Let's save we wanna use 
**slq**:

1) `$ cp ./ ~/.local/bin/slq` - copy the file.
2) `$ chmod +x ~/.local/bin/slq` - give permition to execute.
3) (_Only first time_) `$ PATH="~/.local/bin:$PATH"` - add bin folder to the path.
3) `$ slq 1 10` - and it works!

### Programs description

* **slq** - watch for slurm jobs statuses (wrapper over `squeue -l | grep ${jobId}`)  
_CLI_ (positional arguments):   
    * If no arguments specified, monitors all jobs for current user.
    * Id of the first job in the list of monitored jobsm
    * Id of the last job in the list of monitored jobs. If not specified, only first job will be monitored.

* **tl** - monitor log file with `tail` and `bat`.  
 _CLI_ (positional arguments):   
    * log file name.
    * num lines to tail (defaults to 10 if not specified)

* **find rogue** - track which program currently holds focus. Useful for tracking programs, whoch intercepting user's control. No CLI provided.
    