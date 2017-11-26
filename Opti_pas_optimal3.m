function[r,x,y,k]=Opti_pas_optimal3(epsilon,r0)
k=1;
r=r0;
x(1)=r(1);
y(1)=r(2);
while sqrt(GradRosen(r)*GradRosen(r)')>epsilon
t=GradRosen(r)*GradRosen(r)'/(GradRosen(r)*HessRosen(r)*GradRosen(r)');
r=r-t*GradRosen(r);
k=k+1;
x(k)=r(1);
y(k)=r(2);
end
figure
plot(x,y,'-o')
title(['Steepest descent algo with' num2str(k) ' iterations']);
end