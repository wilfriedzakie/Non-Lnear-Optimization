function[hes]=HessHim(r)
hes(1,1)=4*((r(1)^2)+r(2)-11+2*(r(1)^2))+2;
hes(1,2)=4*r(1)+4*r(2);
hes(2,1)=4*r(1)+4*r(2);
hes(2,2)=2+4*((r(1)^2)+(r(2)^2)-7+2*(r(2)^2));
end