%To find Translational KE we can use the KE function%
%Given weight of carriage= 32.2lb & mass of 4 balls=3.22lb%
m=[32.2/32.2 3.22/32.2 3.22/32.2 3.22/32.2 3.22/32.2];
%Since the whole system moves forward with vel. 4ft/s we can assume that's the vel. of each body%
v=[4 4 4 4 4];
TransKE=KE(m,v);


%Before we proceed we find the vel. of balls wrt O%
%For this we can use the relvel fn that's tailorfit for our purpose%
%Since balls 1,2 rotate with the same vel. they'll have the same relative vel. wrt O%
%Since balls 3,4 rotate with the same vel. they'll have the same relative vel. wrt O%
%Given for ball 1 r=18inches v=80rev/min %
vr1=relvel(18,80);
vr2=vr1;
%Given for ball 3 r=12inches v=100rev/min %
vr3=relvel(12,100);
vr4=vr3;
%To find Rotational KE we can use the KE function%
%We'll have to enter the relative velocities of the balls this time since they're measured wrt O%
%Since the body O doesn't rotate w=0 for it%
%vr1 vr2 +ve due to anti-clockwise rotation vr3 vr4 -ve due to clockwise rotation%
vr=[0 vr1 vr2 -vr3 -vr4];
RotKE=KE(m,vr);


%To calculate the Linear Mometum we can use the Mom function%
%Since the system moves forward with a vel. of 4ft/s that's the vel. of each of the bodies%
LinearMom=Mom(m,v);


%To calculate the Angular Momentum about O we can use the formula L=mvr %
%Relative vel. must be considered %
%The r given in question is in inches, must convert them to foot, divide by 12%
x=size(m);
x=x(2);
mm=eye(x);
vm=eye(x);
rm=eye(x);
r=[0 18/12 18/12 12/12 12/12];
for i=1:x
    mm(i,i)=m(i);
    vm(i,i)=vr(i);
    rm(i,i)=r(i);
end
AngMom=sum(sum(mm*rm*vm));


fprintf("Translational KE about O: "+TransKE+"ft-lb\n")
fprintf("Rotational KE about O: "+RotKE+"ft-lb\n")
TotKE=TransKE+RotKE;
fprintf("Total KE about O: "+TotKE+"ft-lb\n")
fprintf("Linear Momentum about O: "+LinearMom+"lb-sec\n")
fprintf("Angular Momentum about O: "+AngMom+"ft-lb-sec\n")



