@echo off

set "TF=W1"

doskey %TF%=tf %TF% ch $*
doskey %TF%f=tf %TF% f $*
doskey w%TF%=tf %TF% f $*
doskey %TF%v=tf %TF% v $*
doskey %TF%r=tf %TF% r $*