@echo off

set "TF=H8"

doskey %TF%=tf %TF% ch $*
doskey %TF%f=tf %TF% f $*
doskey h%TF%=tf %TF% f $*
doskey %TF%v=tf %TF% v $*
doskey %TF%r=tf %TF% r $*