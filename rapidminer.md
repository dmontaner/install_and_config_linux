

1. Download the software from <https://my.rapidminer.com/nexus/account/index.html#downloads>
1. Uncompress for instance in your `bin` directory
1. Execute the `RapidMiner-Studio.sh` script,
it will ask for a liogin.

You can create an alias: add this line to your `.profile` file  
`alias rapidminer="/home/dmontaner/bin/rapidminer-studio/RapidMiner-Studio.sh"`

-----

This does not work because I did not set up my `RAPIDMINER_HOME` variable:

1. add to your path. Include this line in your `.profile` file:  
`export PATH=/home/dmontaner/bin/rapidminer-studio`  
1. create an alias:  
`cd bin//rapidminer-studio`  
`ln -s RapidMiner-Studio.sh rapidminer`
