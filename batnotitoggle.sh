#!/bin/dash

hdir="$(dirname "$(readlink -f "$0")")"

bnst=$(cat "$hdir"/iwaited/batnotistate)
case $1 in
    "")
        if [ "$bnst" = "Noti-on" ]; then
            echo "Noti-off" > "$hdir"/iwaited/batnotistate
        else
            echo "Noti-on" > "$hdir"/iwaited/batnotistate
        fi
        ;;
    enable)
        echo "Noti-on" > "$hdir"/iwaited/batnotistate
        ;;
    disable)
        echo "Noti-off" > "$hdir"/iwaited/batnotistate
        ;;
    *)
        exit 0
        ;;
esac
