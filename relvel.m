% relvel is a function to compute relative velocity according to the formula %
% Vrel = radius * angular velocity %
% To use this function the radius must be in inches & angular vel. in rev/min %
function rv = relvel(r,rev)
rv=I2F(r)*Rev2Rad(rev);
end
% Rev2Rad converts rev/min to rad/sec %
function w=Rev2Rad(rev)
w=(rev*2*pi)/60;
end
% I2F converts inches to foot %
function f=I2F(x)
f=x/12;
end