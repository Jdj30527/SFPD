clear;clc;
%Gets data from first thousand lines of data to find maximum time
[~, text1] = xlsread('sfpd_dispatch_data_subset.csv', 'G2: G1000');
[~, text2] = xlsread('sfpd_dispatch_data_subset.csv', 'K2: K1000');
DateNumber1 = datevec(text1,'yyyy-mm-dd HH:MM:SS');
for i = 1:length(text2)
    if isempty(text2{i}) == 0
        DateNumber2 = datevec(text2{i},'yyyy-mm-dd HH:MM:SS');
        f1(i) = etime(DateNumber2,DateNumber1(i,:));
    else
        f1(i) = NaN;
    end
end
[a, i] = max(f1);

%Gets data from second thousand lines of data to find maximum time
[~, text3] = xlsread('sfpd_dispatch_data_subset.csv', 'G1001: G2000');
[~, text4] = xlsread('sfpd_dispatch_data_subset.csv', 'K1001: K2000');
DateNumber3 = datevec(text3,'yyyy-mm-dd HH:MM:SS');
for j = 1:length(text4)
    if isempty(text4{j}) == 0
        DateNumber4 = datevec(text4{j},'yyyy-mm-dd HH:MM:SS');
        f2(j) = etime(DateNumber4,DateNumber3(j,:));
    else
        f2(j) = NaN;
    end
end
[b, j] = max(f2);

%Gets data from third thousand lines of data to find maximum time
[~, text5] = xlsread('sfpd_dispatch_data_subset.csv', 'G2001: G3000');
[~, text6] = xlsread('sfpd_dispatch_data_subset.csv', 'K2001: K3000');
DateNumber5 = datevec(text5,'yyyy-mm-dd HH:MM:SS');
for z = 1:length(text6)
    if isempty(text6{z}) == 0
        DateNumber6 = datevec(text6{z},'yyyy-mm-dd HH:MM:SS');
        f3(z) = etime(DateNumber6,DateNumber5(z,:));
    else
        f3(z) = NaN;
    end
end
[c, z] = max(f3);

%Gets data from fourth thousand to find maximum time
[~, text7] = xlsread('sfpd_dispatch_data_subset.csv', 'G3001: G4000');
[~, text8] = xlsread('sfpd_dispatch_data_subset.csv', 'K3001: K4000');
DateNumber7 = datevec(text7,'yyyy-mm-dd HH:MM:SS');
for y = 1:length(text8)
    if isempty(text8{y}) == 0
        DateNumber8 = datevec(text8{y},'yyyy-mm-dd HH:MM:SS');
        f4(y) = etime(DateNumber8,DateNumber7(y,:));
    else
        f4(y) = NaN;
    end
end
[g, y] = max(f4);

%Gets data from fifth thousand to find maximum time
[~, text9] = xlsread('sfpd_dispatch_data_subset.csv', 'G4001: G5000');
[~, text10] = xlsread('sfpd_dispatch_data_subset.csv', 'K4001: K5000');
DateNumber9 = datevec(text9,'yyyy-mm-dd HH:MM:SS');
for x = 1:length(text10)
    if isempty(text10{x}) == 0
        DateNumber10 = datevec(text10{x},'yyyy-mm-dd HH:MM:SS');
        f5(x) = etime(DateNumber10,DateNumber9(x,:));
    else
        f5(x) = NaN;
    end
end
[h, x] = max(f5);

%Gets data from sixth thousand to find maximum time
[~, text11] = xlsread('sfpd_dispatch_data_subset.csv', 'G5001: G6000');
[~, text12] = xlsread('sfpd_dispatch_data_subset.csv', 'K5001: K6000');
DateNumber11 = datevec(text11,'yyyy-mm-dd HH:MM:SS');
for w = 1:length(text12)
    if isempty(text12{w}) == 0
        DateNumber12 = datevec(text12{w},'yyyy-mm-dd HH:MM:SS');
        f6(w) = etime(DateNumber12,DateNumber11(w,:));
    else
        f6(w) = NaN;
    end
end
[f, w] = max(f6);

%Gets data from seventh thousand to find maximum time
[~, text13] = xlsread('sfpd_dispatch_data_subset.csv', 'G6001: G7000');
[~, text14] = xlsread('sfpd_dispatch_data_subset.csv', 'K6001: K7000');
DateNumber13 = datevec(text13,'yyyy-mm-dd HH:MM:SS');
for v = 1:length(text14)
    if isempty(text14{v}) == 0
        DateNumber14 = datevec(text14{v},'yyyy-mm-dd HH:MM:SS');
        f7(v) = etime(DateNumber14,DateNumber13(v,:));
    else
        f7(v) = NaN;
    end
end
[k, v] = max(f7);

%Gets data from eigth thousand to find maximum time
[~, text15] = xlsread('sfpd_dispatch_data_subset.csv', 'G7001: G8000');
[~, text16] = xlsread('sfpd_dispatch_data_subset.csv', 'K7001: K8000');
DateNumber15 = datevec(text15,'yyyy-mm-dd HH:MM:SS');
for u = 1:length(text16)
    if isempty(text16{u}) == 0
        DateNumber16 = datevec(text16{u},'yyyy-mm-dd HH:MM:SS');
        f8(u) = etime(DateNumber16,DateNumber15(u,:));
    else
        f8(u) = NaN;
    end
end
[l, u] = max(f8);

%Gets data from ninth thousand to find maximum time
[~, text17] = xlsread('sfpd_dispatch_data_subset.csv', 'G8001: G9000');
[~, text18] = xlsread('sfpd_dispatch_data_subset.csv', 'K8001: K9000');
DateNumber17 = datevec(text17,'yyyy-mm-dd HH:MM:SS');
for t = 1:length(text18)
    if isempty(text18{t}) == 0
        DateNumber18 = datevec(text18{t},'yyyy-mm-dd HH:MM:SS');
        f9(t) = etime(DateNumber18,DateNumber17(t,:));
    else
        f9(t) = NaN;
    end
end
[m, t] = max(f9);

%Gets data from tenth thousand to find maximum time
[~, text19] = xlsread('sfpd_dispatch_data_subset.csv', 'G9001: G10001');
[~, text20] = xlsread('sfpd_dispatch_data_subset.csv', 'K9001: K10001');
DateNumber19 = datevec(text19,'yyyy-mm-dd HH:MM:SS');
for s = 1:length(text20)
    if isempty(text20{s}) == 0
        DateNumber20 = datevec(text20{s},'yyyy-mm-dd HH:MM:SS');
        f10(s) = etime(DateNumber20,DateNumber19(s,:));
    else
        f10(s) = NaN;
    end
end
[n, s] = max(f10);

%Gets the first thousand
stra1 = sprintf('P%d: P%d', i+1, i+1);
loc1 = sprintf('AG%d: AG%d', i+1, i+1);
[~, address1] = xlsread('sfpd_dispatch_data_subset.csv', stra1);
[~, location1] = xlsread('sfpd_dispatch_data_subset.csv', loc1);
longestA = [(a / 60)/60 address1 location1];

%Gets the second thousand
str2 = sprintf('P%d: P%d', j+1000, j+1000);
loc2 = sprintf('AG%d: AG%d', j+1000, j+1000);
[~, address2] = xlsread('sfpd_dispatch_data_subset.csv', str2);
[~, location2] = xlsread('sfpd_dispatch_data_subset.csv', loc2);
longestB = [(b / 60)/60 address2 location2];

%Gets the third thousand
str3 = sprintf('P%d: P%d', z+2000, z+2000);
loc3 = sprintf('AG%d: AG%d', z+2000, z+2000);
[~, address3] = xlsread('sfpd_dispatch_data_subset.csv', str3);
[~, location3] = xlsread('sfpd_dispatch_data_subset.csv', loc3);
longestC = [(c / 60)/60 address3 location3];

%Gets the fourth thousand
str4 = sprintf('P%d: P%d', y+3000, y+3000);
loc4 = sprintf('AG%d: AG%d', y+3000, y+3000);
[~, address4] = xlsread('sfpd_dispatch_data_subset.csv', str4);
[~, location4] = xlsread('sfpd_dispatch_data_subset.csv', loc4);
longestD = [(g / 60)/60 address4 location4];

%Gets the fifth thousand
str5 = sprintf('P%d: P%d', x+4000, x+4000);
loc5 = sprintf('AG%d: AG%d', x+4000, x+4000);
[~, address5] = xlsread('sfpd_dispatch_data_subset.csv', str5);
[~, location5] = xlsread('sfpd_dispatch_data_subset.csv', loc5);
longestE = [(h / 60)/60 address5 location5];

%Gets the sixth thousand
str6 = sprintf('P%d: P%d', w+5000, w+5000);
loc6 = sprintf('AG%d: AG%d', w+5000, w+5000);
[~, address6] = xlsread('sfpd_dispatch_data_subset.csv', str6);
[~, location6] = xlsread('sfpd_dispatch_data_subset.csv', loc6);
longestF = [(f / 60)/60 address6 location6];

%Gets the seventh thousand
str7 = sprintf('P%d: P%d', v+6000, v+6000);
loc7= sprintf('AG%d: AG%d', v+6000, v+6000);
[~, address7] = xlsread('sfpd_dispatch_data_subset.csv', str7);
[~, location7] = xlsread('sfpd_dispatch_data_subset.csv', loc7);
longestG= [(k / 60)/60 address7 location7];

%Gets the eigth thousand
str8 = sprintf('P%d: P%d', u+7000, u+7000);
loc8= sprintf('AG%d: AG%d', u+7000, u+7000);
[~, address8] = xlsread('sfpd_dispatch_data_subset.csv', str8);
[~, location8] = xlsread('sfpd_dispatch_data_subset.csv', loc8);
longestH= [(l / 60)/60 address8 location8];

%Gets the ninth thousand
str9 = sprintf('P%d: P%d', t+8000, t+8000);
loc9= sprintf('AG%d: AG%d', t+8000, t+8000);
[~, address9] = xlsread('sfpd_dispatch_data_subset.csv', str9);
[~, location9] = xlsread('sfpd_dispatch_data_subset.csv', loc9);
longestI= [(m / 60)/60 address9 location9];

%Gets the tenth thousand
str10 = sprintf('P%d: P%d', s+9000, s+9000);
loc10= sprintf('AG%d: AG%d', s+9000, s+9000);
[~, address10] = xlsread('sfpd_dispatch_data_subset.csv', str10);
[~, location10] = xlsread('sfpd_dispatch_data_subset.csv', loc10);
longestJ= [(n / 60)/60 address10 location10];

%Creates table that displays the time in hours, address, and laditude and longitude
fullList = [longestA; longestB; longestC; longestD; longestE; longestF; longestG; longestH; longestI; longestJ];
