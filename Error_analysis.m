FN = load('result_Ybus.txt')

FN_VA = load('FN_VA.txt');
FN_VM = load('FN_VM.txt');
FN_PG = load('FN_PG.txt');
FN_QG = load('FN_QG.txt');
FN_lam = load('FN_lam.txt');
FN_mu = load('FN_mu.txt');
FN_z = load('FN_z.txt');

MLP_VA_total = load('MLP_VA_total.txt');
MLP_VM_total = load('MLP_VM_total.txt');
MLP_PG_total = load('MLP_PG_total.txt');
MLP_QG_total = load('MLP_QG_total.txt');
MLP_lam_total = load('MLP_lam_total.txt');
MLP_mu_total = load('MLP_mu_total.txt');
MLP_z_total = load('MLP_z_total.txt');

norm_FN_VA = (FN_VA - min(FN_VA))./(max(FN_VA)-min(FN_VA));
norm_FN_VM = (FN_VM - min(FN_VM))./(max(FN_VM)-min(FN_VM));
norm_FN_PG = (FN_PG - min(FN_PG))./(max(FN_PG)-min(FN_PG));
norm_FN_QG = (FN_QG - min(FN_QG))./(max(FN_QG)-min(FN_QG));
norm_FN_lam = (FN_lam - min(FN_lam))./(max(FN_lam)-min(FN_lam));
norm_FN_mu = (FN_mu - min(FN_mu))./(max(FN_mu)-min(FN_mu));
norm_FN_z = (FN_z - min(FN_z))./(max(FN_z)-min(FN_z));


norm_MLP_VA_total = (MLP_VA_total - min(MLP_VA_total))./(max(MLP_VA_total)-min(MLP_VA_total));
norm_MLP_VM_total = (MLP_VM_total - min(MLP_VM_total))./(max(MLP_VM_total)-min(MLP_VM_total));
norm_MLP_PG_total = (MLP_PG_total - min(MLP_PG_total))./(max(MLP_PG_total)-min(MLP_PG_total));
norm_MLP_QG_total = (MLP_QG_total - min(MLP_QG_total))./(max(MLP_QG_total)-min(MLP_QG_total));
norm_MLP_lam_total = (MLP_lam_total - min(MLP_lam_total))./(max(MLP_lam_total)-min(MLP_lam_total));
norm_MLP_mu_total = (MLP_mu_total - min(MLP_mu_total))./(max(MLP_mu_total)-min(MLP_mu_total));
norm_MLP_z_total = (MLP_z_total - min(MLP_z_total))./(max(MLP_z_total)-min(MLP_z_total));

nan_idx = isnan(norm_FN_VA);
norm_FN_VA(nan_idx) = 0;
nan_idx = isnan(norm_MLP_VA_total);
norm_MLP_VA_total(nan_idx) = 0;

% 
% 
subplot(2,7,1);
scatter(mean(norm_FN_VA,2),mean(norm_MLP_VA_total,2),'.','k');
xlim([0,1])
ylim([0,1])
xticks([0 0.25 0.5 0.75 1.0])
yticks([0 0.25 0.5 0.75 1.0])
hline = refline;
hline.Color = 'b';
ylabel('Normalized Ground-Truth','FontSize',11); 

subplot(2,7,2);
scatter(mean(norm_FN_VM,2),mean(norm_MLP_VM_total,2),'.','k');
xlim([0,1])
ylim([0,1])
xticks([0 0.25 0.5 0.75 1.0])
yticks([0 0.25 0.5 0.75 1.0])
hline = refline;
hline.Color = 'b';

subplot(2,7,3);
scatter(mean(norm_FN_PG,2),mean(norm_MLP_PG_total,2),'.','k');
xlim([0,1])
ylim([0,1])
xticks([0 0.25 0.5 0.75 1.0])
yticks([0 0.25 0.5 0.75 1.0])
hline = refline;
hline.Color = 'b';

subplot(2,7,4);
scatter(mean(norm_FN_QG,2),mean(norm_MLP_QG_total,2),'.','k');
xlim([0,1])
ylim([0,1])
xticks([0 0.25 0.5 0.75 1.0])
yticks([0 0.25 0.5 0.75 1.0])
hline = refline;
hline.Color = 'b';

subplot(2,7,5);
scatter(mean(norm_FN_lam,2),mean(norm_MLP_lam_total,2),'.','k');
xlim([0,1])
ylim([0,1])
xticks([0 0.25 0.5 0.75 1.0])
yticks([0 0.25 0.5 0.75 1.0])
hline = refline;
hline.Color = 'b';

subplot(2,7,6);
scatter(mean(norm_FN_mu,2),mean(norm_MLP_mu_total,2),'.','k');
xlim([0,1])
ylim([0,1])
xticks([0 0.25 0.5 0.75 1.0])
yticks([0 0.25 0.5 0.75 1.0])
hline = refline;
hline.Color = 'b';

subplot(2,7,7);
scatter(mean(norm_FN_z,2),mean(norm_MLP_z_total,2),'.','k');
xlim([0,1])
ylim([0,1])
xticks([0 0.25 0.5 0.75 1.0])
yticks([0 0.25 0.5 0.75 1.0])
hline = refline;
hline.Color = 'b';

xlabel('Normalized MTL prediction','FontSize',11); 

% subplot(1,7,2);
% scatter(norm_FN_VM,norm_MLP_VM_total);
% 
% subplot(1,7,3);
% scatter(norm_FN_PG,norm_MLP_PG_total);
% 
% subplot(1,7,4);
% scatter(norm_FN_QG,norm_MLP_QG_total);
% 
% subplot(1,7,5);
% scatter(norm_FN_lam,norm_MLP_lam_total);
% 
% subplot(1,7,6);
% scatter(norm_FN_mu,norm_MLP_mu_total);
% 
% subplot(1,7,7);
% scatter(norm_FN_z,norm_MLP_z_total);



