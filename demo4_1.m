T=[1:1:10];
R=[26.00 	25.05 	24.83 	25.18 	24.20 	24.70 	26.70 	23.00 	26.00 	24.34 ];
x = [25 0]';
P = 0.04*eye(2);
for k = 1:10
    H = [1 T(k)];
    Z = R(k);
    K = P*H'/(H*P*H'+1);
    P = (eye(2) - K*H)*P;           % covariance matrix P update
    x = x+K*(Z-H*x);               % x state update
    a(k) = x(1,:);
    b(k) = x(2,:);
end
for i = 1:10
    y(i) = a(i)+ b(i)*T(i) ;
end
plot(T,y);
plot(T,a,'k',T,b,'r');
xlabel('Time');ylabel('Parameters');
legend('a','b');
title('Parameter Identification of RLS ');
