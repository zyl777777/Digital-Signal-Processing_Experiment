clear;
den = [1 -0.5 -0.005 0.3];   %设定函数的分母向量
num=[1 2 1];         %设定函数的分子向量
subplot(131);
zplane(num,den);axis([-1.2 1.2 -1.2 1.2]);title('分子多项式[1 2 1]');%绘制系统函数的零极点图
num=[0 1 2 1];         %设定函数的分子向量
subplot(132);
zplane(num,den);axis([-1.2 1.2 -1.2 1.2]);title('分子多项式[0 1 2 1]');%绘制系统函数的零极点图
num=[0 0 1 2 1];         %设定函数的分子向量
subplot(133);
zplane(num,den);axis([-1.2 1.2 -1.2 1.2]);title('分子多项式[0 0 1 2 1]');%绘制系统函数的零极点图
