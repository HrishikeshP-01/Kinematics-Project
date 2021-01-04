% The first part %
% Va = Vo + Va/o %
% angular vel. of AO = angular vel. wheel = Vo/r %
Vo=3;
r=0.3;
ro=0.2;
AOP=60;
ang_wheel=Vo/r;
Va_wrt_o=ro*ang_wheel;
% Using sum of cosines %
Va2=Vo*Vo+Va_wrt_o*Va_wrt_o+2*Vo*Va_wrt_o*cosd(AOP);
Va=sqrt(Va2);
fprintf("Part a\n")
fprintf("Vel of A for the instant represented: "+Va+" m/s\n\n")


% The second part %
% On observation of the system it can be concluded that P is the instantaneous center %
% At pt. O, Vo = OP*ang_vel %
Vo=3;
Rop=elen(0,0,0,-2/12);
Ao=Vo/Rop;
% Vel. at any point = Angular vel. * Distance of between the point & P %
Rap=elen(0,10/12,0,-2/12);
Va=Rap*Ao;

Rbp=elen(0,-10/12,0,-2/12);
Vb=Rbp*Ao;

Rcp=elen(10/12,0,0,-2/12);
Vc=Rcp*Ao;

Rdp=elen(10/12,-2/12,0,-2/12);
Vd=Rdp*Ao;

fprintf("Part b\n")
fprintf("Vel. at A: "+Va+" ft/s\n")
fprintf("Vel. at B: "+Vb+" ft/s\n")
fprintf("Vel. at C: "+Vc+" ft/s\n")
fprintf("Vel. at D: "+Vd+" ft/s\n")

