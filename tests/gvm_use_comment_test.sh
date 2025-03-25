source $GVM_ROOT/scripts/gvm
gvm use go1.23.6 # status=0
go version # status=0; match=/go1\.23\.6/
gvm use go1.21.4 # status=0
go version # status=0; match=/go1\.21\.4/
