function[]=convergences_pas_optimal(epsilon,r0)
[~,x,y,k]=Opti_pas_optimal3(epsilon,r0);
plot(x,y,'-o')
xlabel('xn');
ylabel('yn');
hold on
[X,Y]=meshgrid(-3:0.01:3,-3:0.01:3);
contour(X,Y,(((X.^2)-Y).^2)+(X-1).^2,[0,0.1,0.5,1,2,5,10,20,30]);
text(1.1,1,'minimum')
title(['Steepest descent with' num2str(k) ' iterations']);
%set(gca,'color',[1 1 0])
%set(gcf,'color',[1 0 0])
[a,b]=meshgrid(-0.5:0.01:2,-0.5:0.01:2);
c=(a.^2-b).^2+(a-1).^2;
figure
surf(a,b,c)
end
