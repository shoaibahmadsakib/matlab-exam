1:  Write a program to generate Amplitude Modulation using MATLAB

Am=1;
Ac=2;
fm=2;
fc=500;
t=0:0.001:1;
k=0.08;
m=Am*sin(2*pi*fm*t);
c=Ac*cos(2*pi*fc*t);
y=(1+k*m).*c;
subplot(3,1,1)
plot(t,m)
title('msg signal')a
subplot(3,1,2)
plot(t,c)
title('carrier signal')
subplot(3,1,3)
plot(t,y)
title('modulated signal')



 2:  write a program to generate Amplitude Demodulation using MATLAB

t = 0 : 0.001 : 1;
fc = 100;
fm = 10;
am = 1;
ac = 1;
mt = am*sin(2*pi*fm*t);
subplot(4,1,1);
plot(t,mt);
title('message signal ');
xlabel('time');
ylabel('amplitude');
ct = ac*sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,ct);
title('message signal ');
xlabel('time');
ylabel('amplitude');
k = 0.5;
yt = ac.*(1+k*am.*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
subplot(4,1,3);
plot(t,yt);
title('modulated signal ');
xlabel('time');
ylabel('amplitude'); 
r = yt.*ct;
[b,a] = butter(4,0.04);
%[b,a] = butter(n,Wn) returns the transfer function coefficients of an nth-order lowpass digital Butterworth filter with normalized cutoff frequency Wn.
mr = filter(b,a,r);
subplot(4,1,4);
plot(t,mr);
title('demodulated signal ');
xlabel('time');
ylabel('amplitude');


3NUM  write a program to generate Frequency Modulation using MATLAB

fm = 25;
B = 10;
t = 0:0.0001:0.25
m = cos(2*pi*fm*t)
subplot(3,1,1);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on

fc=400;
c=sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on

y = sin(2*pi*fc*t+(B*sin(2*pi*fm*t)));
subplot(3,1,3);
plot(t,y)
xlabel('Time');
ylabel('Amplitude')
title('FM Signal')




4 NUM Write a program to generate Frequency Demodulation using 
MATLAB

fs=10000;
fm=35;
fc=500;
am=1;
ac=1;
b=10;
t=(0:0.1*fs)/fs;

wc=2*pi*fc;
wm=2*pi*fm;
m_t= am*cos(wm*t);
subplot(5,1,1);
plot(t,m_t);
title("Message signal(fm=35hz)");
grid on;

c_t=ac*cos(wc*t);
subplot(5,1,2);
plot(t,c_t);
title("Carrier signal");
grid on;

s_t= ac*cos((wc*t) + b*sin(wm*t));
subplot(5,1,3);
plot(t,s_t);
title("Modulated signal");
grid on;

d=demod(s_t,fc,fs,'fm');
subplot(5,1,4);
plot(t,d);
title("Demodulated signal");
grid on;




5num  Write a program to generate Phase Modulation using MATLAB


clc;
clear all;
close all;
am = 1
ac = 1
fc = 50
fm = 2
fs = 20
t = 1
t1 = 0:0.001:t
wm = 2*pi*fm
m = am*cos(wm*t1)
subplot(3,1,1)
plot(t1,m)
title('message signal')
xlabel('time')
ylabel('amplitude')
wc=2*pi*fc;
c=ac*cos(wc*t1)
subplot(3,1,2)
plot(t1,c)
title('carrier signal')
xlabel('time')
ylabel('amplitude')
pm=ac*cos(wc*t1+m.*fs)
subplot(3,1,3)
plot(t1,pm)
title('phase modulated signal')
xlabel('time')
ylabel('amplitude')






6 NUM Write a program to generate Pre-Emphasis & DE-Emphasis waves 
by using MATLAB

f1 = 10;
for f = 1:50
x(f) = (1/sqrt(1+(f1/f)^2))
f2(f) = f;
end
subplot(2,1,1)
plot(f2,x)
title('pre emphasis signal')


for f = 1:50
y(f) = (1/sqrt(1+(f/f1)^2))
f3(f) = f;
end
subplot(2,1,2)
plot(f3,y)
title('de emphasis signal')
