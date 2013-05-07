function plotEEG (filename)
    %load(filePath);
    data = [];
    numData = [];
    left = 0;
    bottom = 100;
    width = 1000;
    heigh = 300;
    
    data = textread(filename,'%s');
    size = length(data);
    oneSize = size/2;
    
    for i =1:size
        numData(i,1)=str2num(data{i,1});
    end
    ATT = plot(numData(1:oneSize,1),'-o');
    hold on
    MED = plot(numData(oneSize:size,1),'-o');
    
    set(gca,'YTick',0:10:100);
    set(gca,'YTickLabel',{'0','10','20','30','40','50','60','70','80','90','100'});
    title('EEG Signal');
    xlabel('Time');
    ylabel('Value');
  
    set(ATT,'Color','red','LineWidth',1);
    %set(ATT,'Position', [left bottom width heigh]);
    set(MED,'Color','blue','LineWidth',1);
    %set('Position', [left bottom width heigh]);