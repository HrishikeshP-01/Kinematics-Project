m=8;
r=5;
a=10;
ia=2/5*m*r*r;
ib=2/5*m*r*r;
ic=2/5*m*r*r;
id=2/5*m*r*r;
dist_bw_AC2C=a/sqrt(2);
dist_bw_AC2D=a/sqrt(2);
iab=ia+ib+ic+m*dist_bw_AC2C*dist_bw_AC2C+id+m*dist_bw_AC2D*dist_bw_AC2D;
iad=ia+id+ic+m*a*a+ib+m*a*a;
fprintf("Moi about AB: "+iab+" kg/m\n ")
fprintf("Moi about AD: "+iad+" kg/m\n ")