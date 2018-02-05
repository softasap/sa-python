# Static parameters
WORKSPACE=./
BOX_PLAYBOOK=$WORKSPACE/box_win.yml
BOX_NAME=windows
BOX_ADDRESS=192.168.2.88
BOX_USER=Administrator
BOX_PWD=${BOX_WINRM_PASSWORD}

prudentia ssh <<EOF
unregister $BOX_NAME

register
$BOX_PLAYBOOK
$BOX_NAME
$BOX_ADDRESS
$BOX_USER
$BOX_PWD

verbose 4
set box_address $BOX_ADDRESS

provision $BOX_NAME
EOF
