clear all;
close all;
N = 512;fs = 1;
[x,Fs] = audioread("bluesky1.wav",'native');
h =[0.01218354 -0.009012882 -0.02881839 -0.04743239 -0.04584568 -0.008692503 0.06446265 0.1544655 0.2289794 0.257883 0.2289794 0.1544655 0.06446265 -0.008692503 -0.04584568 -0.04743239 -0.02881839 -0.009012882 0.01218354];
x1=double(x);
y1=filter(h,1,x);

[H1,w] = freqz(x1,1,N,'whole',fs);
Hr1 = abs(H1);
subplot(311);plot(w,Hr1);grid on;
title('�˲�ǰ�����ź�Ƶ����');
[H2,w] = freqz(y1,1,N,'whole',fs);
Hr2 = abs(H2);
subplot(312);plot(w,Hr2);grid on;
title('Matlab�˲��������ź�Ƶ����');
[y2,Fs2] = audioread("blueskyft.wav",'native');
y2=double(y2);
[H3,w] = freqz(y2,1,N,'whole',fs);
Hr3 = abs(H3);
subplot(313);plot(w,Hr3);grid on;
title('C�����˲��������ź�Ƶ����');