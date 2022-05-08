clc;
clf;
clear all;
close all;

m=[0 0 1 1 0 1 0 1 0];

%%%% Modulating signal %%%%
b_period=100;
B=[];
for n=1:1:length(m)
if m(n)==1
temp1=ones(1,100);
else m(n)==0
temp1=zeros(1,100);
end
B=[B temp1];
end

t1=b_period/100:b_period/100:100*length(m)*(b_period/100);
subplot(3,1,1);
plot(t1,B,'lineWidth',2.5);grid on;
ylabel('Amplitude');
xlabel(' Time ');
title('Modulating signal');
%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%
fc=200000;
fb=100000;
tb=1/fb;
%%%%%%%%%%

%%%% Carrier signal %%%%
t=linspace(0,tb,100);
ec=sin(2*pi*fc*t);
subplot(3, 1, 2);
plot(ec);
title('Carrier signal');
xlabel(' Time ');
ylabel('amplitude');
%%%%%%%%%%%%%%%%%%%%%%%

%%%% BFSK Modulation %%%%
%f1=100000;f2=500000;
f1=100000;f2=900000;
t=linspace(0,tb,100);
ec1=sin(2*pi*f1*t);
ec2=sin(2*pi*f2*t);
fskout=[ ];
bin=[ ];car1=[ ];car2=[ ];
for i=1:length(m);
if m(i)==1
fskout=[fskout,m(i)*ec2];
else fskout=[fskout,(1-m(i))*ec1];
end;
bin=[bin,m(i)*ones(1,100)];
car1=[car1,ec1];
car2=[car2,ec2];
end
subplot(3, 1, 3);
plot(fskout);
title('BFSK modulated signal');
xlabel(' Time ');
ylabel('amplitude');
#######################


