val =25;
val_err = 2;
act_val = repmat(val,1,10);
randn('seed',1);
v = randn(1,10);
v_m = mean(v);
err_max = max(abs(v-v_m));
mea =(v-v_m)/err_max*val_err + act_val;
t = [1:1:10];
str=[repmat('Mea:',10,1) num2str(mea')];
plot(t,mea,'b--o','MarkerSize',5,'MarkerEdgeColor','b','MarkerFaceColor','b');
text(t,mea,cellstr(str),'Color','r','FontSize',8);
hold on;
plot(t,act_val,'m-o');
legend('Measure','Actual');
xlabel('Time');ylabel(' Temperature');
title('Measure and Actual Value');

