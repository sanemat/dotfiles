#!/bin/bash

x-terminal-emulator -e '
  sh -c "
    killall -KILL mozc_server

    rm -f /tmp/.mozc.*.session
  "
'
