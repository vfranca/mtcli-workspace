@echo off
setlocal

set "path_aliases=aliases"

for %%f in ("%path_aliases%\*.bat") do (
    call "%%f"
)

endlocal