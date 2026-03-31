@echo off

set "TF=d1"

doskey %TF%=tf %TF% ch $*
doskey %TF%f=tf %TF% f $*
doskey d%TF%=tf %TF% f $*
doskey %TF%v=tf %TF% v $*
doskey %TF%r=tf %TF% r $*