function [xcomp,ycomp]=resolution(vector,angle)
    xcomp=vector*sind(angle);
    ycomp=vector*cosd(angle);
end