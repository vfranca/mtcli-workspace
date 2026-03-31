@echo off

set "args="

if defined SYMBOL  set args=%args% "%SYMBOL%"
if defined PERIOD  set args=%args% --period "%PERIOD%"
if defined VIEW    set args=%args% --view "%VIEW%"
if defined COUNT   set args=%args% --count "%COUNT%"
if defined VOLUME  set args=%args% --volume "%VOLUME%"
if defined SD      set args=%args% %SD%
if defined NUM     set args=%args% %NUM%
if defined DAY     set args=%args% --date "%DAY%"

call mt bars %args%
call term