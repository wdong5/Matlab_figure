clear;
MLP_14 = load('MAPE_MLP_14.txt');
Sep_14 = load('MAPE_Sep_14.txt');
Ybus_14 = load('MAPE_Ybus_14.txt');

MLP_30 = load('MAPE_MLP_30.txt');
Sep_30 = load('MAPE_Sep_30.txt');
Ybus_30 = load('MAPE_Ybus_30.txt');

MLP_57 = load('MAPE_MLP_57.txt');
Sep_57 = load('MAPE_Sep_57.txt');
Ybus_57 = load('MAPE_Ybus_57.txt');

MLP_118 = load('MAPE_MLP_118.txt');
Sep_118 = load('MAPE_Sep_118.txt');
Ybus_118 = load('MAPE_Ybus_118.txt');

MLP_300 = load('MAPE_MLP_300.txt');
Sep_300 = load('MAPE_Sep_300.txt');
Ybus_300 = load('MAPE_Ybus_300.txt');

% data = {rand(100,5), rand(100,5), rand(100,5)}; 
% boxplotGroup(data, 'PrimaryLabels', {'Sep' 'MTL' 'Smart-PGsim'}, ...
%   'SecondaryLabels',{'Group1', 'Group2','Group1', 'Group2', 'Group2'}, 'GroupLabelType', 'Vertical')

x(:,1) = reshape(Sep_14(4,1:1000),1,[]);
x(:,2) = reshape(Ybus_14(4,1:1000),1,[]);
x(:,3) = reshape(MLP_14(4,1:1000),1,[]);

x(:,4) = reshape(Ybus_30(4,1:1000),1,[]);
x(:,5) = reshape(MLP_30(4,1:1000),1,[]);
x(:,6) = reshape(Sep_30(4,1:1000),1,[]);

x(:,7) = reshape(Sep_57(4,1:1000),1,[]);
x(:,8) = reshape(Ybus_57(4,1:1000),1,[]);
x(:,9) = reshape(MLP_57(4,1:1000),1,[]);

x(:,10) = reshape(Sep_118(4,1:1000),1,[]);
x(:,11) = reshape(Ybus_118(4,1:1000),1,[]);
x(:,12) = reshape(MLP_118(4,1:1000),1,[]);

x(:,13) = reshape(Ybus_300(4,1:1000),1,[]);
x(:,14) = reshape(Sep_300(4,1:1000),1,[]);
x(:,15) = reshape(MLP_300(4,1:1000),1,[]);


group = ones([15,40])
for (i=1:14)
    group(i+1,:) = group(i,:) + group(1,:)
end

figure(1)
%x = [1,2,3,4,5,1,2,3,4,6]; 
%group = [1,1,2,2,2,3,3,3,4,4]; 
positions = [1.20 1.45 1.70  2.1 2.35 2.60 3 3.25 3.50 3.9 4.15 4.40 4.80 5.05 5.30]; 
boxplot(x,group, 'positions', positions, 'symbol',''); 

set(gca,'xtick',[mean(positions(1:3)) mean(positions(4:6)) mean(positions(7:9)) mean(positions(10:12)) mean(positions(13:15))]) 
set(gca,'XTickLabel',{'128*128','256*256','512*512','768*768','1024*1024'})
%subplot(2,1,2)
%boxplot(x,'PlotStyle','compact')

%title('Quality Loss Variation')
ylim([-0.01,0.12])
color = ['r','y', 'b', 'r','y', 'b','r','y', 'b','r','y', 'b','r','y', 'b',]; 
h = findobj(gca,'Tag','Box'); 
for j=1:length(h) 
    patch(get(h(j),'XData'),get(h(j),'YData'),color(j),'FaceAlpha',.5); 
end 

c = get(gca, 'Children'); 

hleg1 = legend(c(1:3), 'Sep models', 'MTL', 'Smart-PGsim'); 

%xlabel('test Size')
ylabel('Relative Error (Log Scale)')
text(.5,.5,'Better','rotation',90);

