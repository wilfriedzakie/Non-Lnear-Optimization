function[r,k]=newton_himmel(epsilon,r0,MyGrad,MyHess)

k=1;
r=r0;
x(1)=r(1);
y(1)=r(2);
while sqrt(MyGrad(r)*MyGrad(r)')>epsilon
d=(-inv(MyHess(r))*(MyGrad(r))')';
r=r+d; 
disp(d);
k=k+1;
x(k)=r(1);
y(k)=r(2);
end
figure
plot(x,y,'-o')

xlabel('xn');
ylabel('yn');


hold on
[X,Y]=meshgrid(-6:0.01:6,-6:0.01:6);
contour(X,Y,(X.^2+Y-11).^2+(X+Y.^2-7).^2,[0,0.1,0.5,1,2,5,10,20,30,31,50,100,170,160,180]);
text(1.1,1,'minimum')
title(['Newton Algorithm with' num2str(k) ' iterations']);
%set(gca,'color',[1 1 0])
%set(gcf,'color',[1 0 0])
[a,b]=meshgrid(-6:0.2:6,-6:0.2:6);
c=(a.^2+b-11).^2+(a+b.^2-7).^2;
hold on
end