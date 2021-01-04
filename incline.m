function [N,f]=incline(theta,wt,coeff,hf,vf)
[wtx,wty]=resolution(wt,theta);
N=wty-vf;
f=wtx-hf;
end