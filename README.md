# SH Utils

This repo is a collection of bash scripts, which help to manage daily tasks. Use in as an agregator of ideas rather 
than a container with actually useful programs.

### How to use

The easiest and the most convenient way to use such mini-programs is to remove `.sh` extension, put them in 
`~/.local/bin` folder, then export path to them in order to make them globally available. Let's save we wanna use 
**slq**:

1) `$ cp ./ ~/.local/bin/slq` - copy the file.
2) `$ PATH="~/.local/bin:$PATH"` - add bin folder to the path.
3) `$ slq 1 10` - and it works!

### Programs description

* **slq** - watch for slurm jobs statuses (wrapper over `squeue -l | grep ${jobId}`)
