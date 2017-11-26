function[r,x,y]= David_fletcher(epsilon,r0,t0,MyGrad,Myfunc)
teta=[1 0;0 1];
k=1;
r=r0;
x(1)=r(1);
y(1)=r(2);
while sqrt(MyGrad(r)*MyGrad(r)')>epsilon

rOld=r;
d=-MyGrad(r)*(teta)';
t=wolf(r,t0,MyGrad,Myfunc,teta);
disp(t)
r=r+t*d;
disp(r)

delta=(r-rOld)';
sigma=(MyGrad(r)-MyGrad(rOld))';

teta=teta+((delta*(delta)')/((delta)'*sigma))-((teta*sigma*(sigma)'*teta)/((sigma)'*teta*sigma));

disp(teta);
k=k+1;
x(k)=r(1);
y(k)=r(2);
end
figure
plot(x,y,'-o')
%title(['there are' num2str(k) ' iteration']);
xlabel('xn');
ylabel('yn');

hold on
[X,Y]=meshgrid(-3:0.01:3,-3:0.01:3);
contour(X,Y,(X.^2-Y).^2+(X-1).^2,[0,0.1,0.5,1,2,5,10,20,30]);
%text(1.1,1,'minimum')
title(['Convergences of the algorithm with ' num2str(k) ' iteration'])
%title(['Convergences of the algorithm with' num2str(k)' iteration'])
[a,b]=meshgrid(-0.5:0.01:2,-0.5:0.01:2);
c=(a.^2+b).^2+(a-1).^2;
hold on


end

