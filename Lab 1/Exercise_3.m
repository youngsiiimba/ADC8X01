t=0:0.001:5;
f1=(t<=3);
f2=2*(t<=1);
figure;
subplot(3, 1, 1);
plot(t,f2,'r','Linewidth',3);grid;xlabel('t')
ylabel('f2(t)')
title('f2(t)')
y1=conv(f1,f2);
y2=conv(f2,f2);
t=0:0.001:10;
subplot(3, 1, 2);
plot(t,y1*0.001,'r','Linewidth',3);grid;xlabel('t')
ylabel('y(t)')
title('f1(t)*f2(t)')
subplot(3, 1, 3);
plot(t,y2*0.001,'r','Linewidth',3);grid;xlabel('t')
ylabel('y(t)')
title('f2(t)*f2(t)')
