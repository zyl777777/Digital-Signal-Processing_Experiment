N=4096;                 %cmpfft
n=0:N-1;
f=10.8;
fs=40;
w=2*pi/fs;
x=sin(w*f*n)+randn(1,N);
subplot(211);plot(x(1:500));title('x(n)');
splfft(x,N,1);
subplot(212);plot(abs(x));title('splfft�µ�x(k)');