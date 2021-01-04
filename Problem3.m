% First step is to find the forward force on the body %
% Given v=30mi/hr to find a, use the motion_equn function %
% 1mi/hr=1.4667ft/s %
wt=3220;
v=string(30*1.4667);
ac=motion_equn(["0",v,"none","find","200","3"]);
% F=ma %
% Given wt=3220lb %
F=wt/32.2*ac;


% Given the incline is 10percent %
% for each 10 units elevation increases by 1 unit %
theta=atand(1/10);
% To calculate Normal reaction we can use the incline fn%
[N,f]=incline(theta,3220,0.8,484,0);
% But what we get is the total normal reaction %
% To find the Normal reaction of the tires let them be N1 & N2 %
TotalF=F+wt*sind(theta);
% So we have N1+N2=N %
% We can take the couple about pt G the total of which is 0 %
% 60N1 - 60N2 = -TotalF*24 %
% The above 2 equn.s can be expressed in matrix form as %
s=[1 1 N;60 -60 -TotalF*24];
s=rref(s);
N1=s(1,3);
N2=s(2,3);
fprintf("N1 = "+N1+"lb\nN2 = "+N2+"lb\n")
