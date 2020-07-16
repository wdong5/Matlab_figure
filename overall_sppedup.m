y=[ 3.2604  1.5145; 5.77  2.19; 4.41  1.71;7.62  2.61;18.9  8.41;];
subplot(2,1,2)
b=bar(y);


bar_handle = bar(y,'grouped');
set(bar_handle(1),'FaceColor','r','FaceAlpha',.55)
set(bar_handle(2),'FaceColor','b','FaceAlpha',.55)



legend('MIPS','Smart-PGsim');

set(gca,'XTickLabel',{'14-bus','30-bus','57-bus','118-bus','300-bus'} ,'FontSize',12)
xlabel('Problem Size','FontSize',13)
ylabel('Excution Time (*10^{2}/s)','FontSize',13);  
grid on;

y_1 = y(2,:)/y(1,:)

ave_y = mean(y(2,:))
