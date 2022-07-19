T=[1:1:10];
R=[26.00 	25.05 	24.83 	25.18 	24.20 	24.70 	26.70 	23.00 	26.00 	24.34 ];
[m,n]=size(T);
figure 
plot(T,R,'b+')
t=0;
z=0;
tz=0;
tt=0;
for i=1:n
    t=t+T(i);
    tt=tt+T(i)*T(i);
    z=z+R(i);
    tz=tz+T(i)*R(i);
end
a=(tt*z-t*tz)/(n*tt-t*t);
b=(n*tz-t*z)/(n*tt-t*t);
A=polyfit(T,R,1);
z=polyval(A,T);
plot(T,R,'b--o')
hold on
plot(T,z,'m--o');
legend('Measure','Estimation');
xlabel('Time');ylabel(' Temperature');
title('Measure and Estimation Value');
