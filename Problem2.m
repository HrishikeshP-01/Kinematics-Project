%Let x,y & z components of initial vel. of the stone be ux,uy &uz%
ux=4;
[uy,uz]=resolution(6,30);
g=9.81;
%When the stone reaches the highest point of its trajectory, the z component becomes 0%
%x & y components remain unchanged%
vel_at_highest_point=magnitude(ux,uy,0);


%At the highest point the stone collides with an object of mass m and gets embedded in it%
%Let V be vel. of the combined mass & from principle of conservation%
%P before collision = p after collision%
% mv=(m+m)V %
% V=v/2 %
V=vel_at_highest_point/2;


%When string is horizontal T=0, so speed of mass=0, but mass is at distance h from ground %
%Applying principle of conservation of energy%
% Loss of KE= Gain in KE %
% (1/2)2mV^2=2mgL %
% L=V^2/2g %
L=(V*V)/(2*g);

fprintf("Vel at highest point: "+vel_at_highest_point+"\n")
fprintf("Vel after collision: "+V+"\n")
fprintf("Length of the string: "+L+"\n")