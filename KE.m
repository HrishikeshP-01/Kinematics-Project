function E=KE(m,v)
s=size(v);
s=s(2);
for i=1:s
    v(i)=v(i)*v(i)/2;
end
E=m*v';
end