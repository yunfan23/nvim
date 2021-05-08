# #########################################################################
# This is a project setup file to initialize the project folder structure
# properly
# v1: 12 Nov 2020
# Author: Yunfan
# #########################################################################

init: clean
	mkdir data test model source script utils
	touch README.md
	echo "#!/usr/bin/env bash" > setup.sh
	echo "export DIR_PWD=\"\$\( cd \"\$\( dirname \"\$\{BASH_SOURCE\[0\]\}\"  \)\" && pwd  \)\"" >> setup.sh
	echo "export PYTHONPATH=$PYTHONPATH:$DIR_PWD" >> setup.sh
	echo "echo $PYTHONPATH" >> setup.sh

clean:
	\rm -rf data test model source script utils
	\rm -f README.md
