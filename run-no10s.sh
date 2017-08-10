#! /bin/bash
#export XPCOM_DEBUG_BREAK=trap
export MOZ_GL_SPEW=1
./mach run --setpref browser.tabs.remote.autostart=false --setpref browser.tabs.remote.autostart.2=false $@
