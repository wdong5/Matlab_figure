hist_fail1 = load('hist_fail3.txt');
hist_fail2 = load('hist_fail2.txt');
hist_fail3 = load('hist_fail3.txt');
hist_fail4 = load('hist_fail4.txt');
hist_fail5 = load('hist_fail5.txt');

hist_suc = load('hist_suc2.txt');
index = linspace(1,100);

fig = figure;

subplot(1,5,1);
semilogy(index(1:size(hist_suc,1)),hist_suc(:,6),'b-',index(1:size(hist_fail1,1)),hist_fail1(:,6),'r-','LineWidth',1); 
xlim([0,70]);
ylim([1e-6,1e4]);
xticks( [ 0 20 40 60]);
yticks( [ 1e-6 1e-4 1e-2 1e0 1e2 1e4 ]);
ylabel('size','FontSize',12); 
xlabel('iterations','FontSize',12); 
title('step size','FontSize',9);
%set(gca, 'box', 'off');
legend('fail','success');
grid on;


subplot(1,5,2);
%yyaxis left
semilogy(index(1:size(hist_suc,1)),hist_suc(:,1),'b-',index(1:size(hist_fail1,1)),hist_fail1(:,1),'r-','LineWidth',1);
xlim([0,70]);
ylim([1e-14,1e2]);
xticks( [ 0 20 40 60]);
ylabel('loss','FontSize',12); 
xlabel('iterations','FontSize',12); 
%yticks( [1e-15 1e-13 1e-11 1e-9 1e-7 1e-5]);
%yticks( [1e-14 1e-12 1e-10 1e-8 1e-6 1e-4 1e-2 1e-0 1e2]);
yticks( [1e-14  1e-10 1e-6 1e-2  1e2]);
title('feasibility condition','FontSize',9);
%set(gca, 'box', 'off');
grid on;
% xlim([0,70]);
% ylim([1e-15,10]);
% xticks( [ 0 20 40 60]);
% yticks( [ 1e-14 1e-11 1e-8 1e-5 1e-2 1e1 ]);
% ylabel('error','FontSize',12); 
% title('feasibility condition','FontSize',9);
% %set(gca, 'box', 'off');
% grid on;

subplot(1,5,3);
%yyaxis left
semilogy(index(1:size(hist_suc,1)),hist_suc(:,2),'b-',index(1:size(hist_fail1,1)),hist_fail1(:,2),'r-','LineWidth',1);
xlim([0,70]);
ylim([1e-14,1e2]);
xticks( [ 0 20 40 60]);
%yticks( [1e-14 1e-12 1e-10 1e-8 1e-6 1e-4 1e-2 1e-0 1e2]);
ylabel('loss','FontSize',12); 
xlabel('iterations','FontSize',12); 
yticks( [1e-14  1e-10 1e-6 1e-2  1e2]);
title('gradient condition','FontSize',9);
grid on;


subplot(1,5,4);
%yyaxis left
semilogy(index(1:size(hist_suc,1)),hist_suc(:,3),'b-',index(1:size(hist_fail1,1)),hist_fail1(:,3),'r-','LineWidth',1);
xlim([0,70]);
ylim([1e-10,1e2]);
xticks( [ 0 20 40 60]);
ylabel('loss','FontSize',12); 
xlabel('iterations','FontSize',12); 
yticks( [1e-10  1e-6  1e-2  1e2]);
title('complementarity condition','FontSize',9);
grid on;
grid minor;



subplot(1,5,5);
%yyaxis left
semilogy(index(1:size(hist_suc,1)),hist_suc(:,4),'b-',index(1:size(hist_fail1,1)),hist_fail1(:,4),'r-','LineWidth',1);
xlim([0,70]);
ylim([1e-9,1e-1]);
xticks( [ 0 20 40 60]);
ylabel('loss','FontSize',12); 
xlabel('iterations','FontSize',12); 
yticks( [1e-9 1e-7 1e-5 1e-3 1e-1 1e1]);
title('cost condition','FontSize',9);
grid on;


