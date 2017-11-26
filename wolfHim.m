function[tw]=wolfHim(r,t0,myGrad,myFunc,teta)
kmax=1000;
t_minus=0;
t_plus=0;
m1=0.1;
m2=0.9;
t=t0;
v=1;
direction=-myGrad(r)*teta';
for k=1:kmax
v=r+t*direction;
%disp(v)
if myFunc(v)<=m1*myGrad(r)*direction'*t+myFunc(r)&& (myGrad(v)*direction'>= m2*myGrad(r)*direction')
    tw=t;
   % disp(tw)
    break;

elseif myFunc(v)>myGrad(r)*direction'+myFunc(r)
    t_plus=t;
    %disp(t_plus)
elseif myGrad(v)*direction' < m2*myGrad(r)*direction' 
    t_minus=t;  
    %disp(t_minus)
end
if t_plus==0
    tw=2*t_minus;
   % disp(t)
elseif t_plus>0
    tw=(t_plus+t_minus)/2;  
end
v=v+1;
end
disp(v);
end