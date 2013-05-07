function plotEEG (filename)
    %load(filePath);
    data = [];
    numData = [];
    int size;
    
    data = textread('filename','%s');
    size = length(data);
    
    for i =1:(size/2)
        numData(i,1)=str2num(data{i,1});
    end
    plot(numData(1:(size/2),1));
    hold on
    plot(numData((size/2)+1:size,1));
  
