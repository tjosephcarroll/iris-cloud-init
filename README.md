# iris-cloud-init

General flow is the pull.sh goes on the VM which pulls and runs master.sh which executes the contents. 

Master and load are run with the run-parts hence the naming. 

Completely extensible by adding scripts where necessary (according to run-parts rules). In general, the contents of vm and init/master will be static and the changing scripting directories will be load and compose. The code directory will always be custom depending on implementation details. 
