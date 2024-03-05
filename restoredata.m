function [] = restoredata(results,flag)
%RESTOREDATA 此处显示有关此函数的摘要
%   此处显示详细说明
data1 = load('C:\Users\15693\Desktop\11\nowwatch\直线.txt');
data2 = load('C:\Users\15693\Desktop\11\nowwatch\菱形.txt');
data3 = load('C:\Users\15693\Desktop\11\nowwatch\三角形.txt');
range = results.sensingResults{1}.rngEst;
azi = zeros(1,size(range,2));
a1 = data1(:,2);
a2 = data2(:,2);
a3 = data3(:,2);
if flag == 1
    for i = 1:size(range,2)
        if(a1(i)>180)
            azi(i) = results.sensingResults{1}.aziEst(i) + 360.0000001;
        else
            azi(i) = results.sensingResults{1}.aziEst(i) + 180.0000001;
        end
    end
    data = [range;azi]';
    writematrix(data,'C:\Users\15693\Desktop\11\nowwatch\LocationReconstruction.txt' , 'delimiter', ' ');
end
if flag == 2
    for i = 1:size(range,2)
        if(a2(i)>180)
            azi(i) = results.sensingResults{1}.aziEst(i) + 360.0000001;
        else
            azi(i) = results.sensingResults{1}.aziEst(i) + 180.0000001;
        end
    end
    data = [range;azi]';
    writematrix(data,'C:\Users\15693\Desktop\11\nowwatch\LocationReconstruction.txt' , 'delimiter', ' ');
end
if flag == 3
    for i = 1:size(range,2)
        azi(i) = results.sensingResults{1}.aziEst(i) + 360.0000001;
        if(a3(i)<180)
            azi(i) = azi(i)-180;
        end
    end
    data = [range;azi]';
    writematrix(data,'C:\Users\15693\Desktop\11\nowwatch\LocationReconstruction.txt' , 'delimiter', ' ');
end
end

