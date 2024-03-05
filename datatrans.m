function xy = datatrans(flag)
%DATATRANS 此处显示有关此函数的摘要
%   此处显示详细说明
data = load('C:\Users\15693\Desktop\11\nowwatch\直线.txt');
data1 = load('C:\Users\15693\Desktop\11\nowwatch\菱形.txt');
data2 = load('C:\Users\15693\Desktop\11\nowwatch\三角形.txt');
ce = data2';
if flag == 1
    xy = zeros(size(data,1),3);
    r = data(:,1);
    a = data(:,2);
    for i = 1:size(data,1)
        if a(i)>180
            xy(i,1) = r(i)*cos((a(i)-360)*pi/180);
            xy(i,2) = r(i)*sin((a(i)-360)*pi/180);
            xy(i,3) = 20;
        else
            xy(i,1) = r(i)*cos(a(i)*pi/180);
            xy(i,2) = r(i)*sin(a(i)*pi/180);
            xy(i,3) = 20;
        end
    end
end
if flag == 2
    xy = zeros(size(data1,1),3);
    r = data1(:,1);
    a = data1(:,2);
    for i = 1:size(data1,1)
        if a(i)>180
            xy(i,1) = r(i)*cos((a(i)-360)*pi/180);
            xy(i,2) = r(i)*sin((a(i)-360)*pi/180);
            xy(i,3) = 20;
        else
            xy(i,1) = r(i)*cos((a(i)-180)*pi/180);
            xy(i,2) = r(i)*sin((a(i)-180)*pi/180);
            xy(i,3) = 20;
        end
    end
end
if flag == 3
    xy = zeros(size(data2,1),3);
    r = data2(:,1);
    a = data2(:,2);
    for i = 1:size(data2,1)
        if a(i)>180
            xy(i,1) = r(i)*cos((a(i)-360)*pi/180);
            xy(i,2) = r(i)*sin((a(i)-360)*pi/180);
            xy(i,3) = 20;
        else
            xy(i,1) = r(i)*cos(a(i)*pi/180);
            xy(i,2) = r(i)*sin(a(i)*pi/180);
            xy(i,3) = 20;
        end
    end
end
end

