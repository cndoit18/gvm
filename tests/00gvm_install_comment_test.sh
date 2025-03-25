## Cleanup test objects
gvm uninstall go1.20.7 > /dev/null 2>&1
gvm uninstall master > /dev/null 2>&1
gvm uninstall go1.21.4 > /dev/null 2>&1
gvm uninstall go1.23.6 > /dev/null 2>&1
#######################

gvm install go1.20.7 #status=0
GOROOT_BOOTSTRAP=$GVM_ROOT/gos/go1.20.7 gvm install go1.21.4 #status=0
gvm list #status=0; match=/go1.21.4/
GOROOT_BOOTSTRAP=$GVM_ROOT/gos/go1.20.7 gvm install go1.23.6 #status=0
gvm list #status=0; match=/go1.23.6/
GOROOT_BOOTSTRAP=$GVM_ROOT/gos/go1.23.6 gvm install master #status=0
gvm list #status=0; match=/master/
