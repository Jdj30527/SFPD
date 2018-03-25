clear;clc;
[~, callGroup] = xlsread('sfpd_dispatch_data_subset.csv', 'Z2: Z10001'); %Reads the call group column
[~, location] = xlsread('sfpd_dispatch_data_subset.csv', 'AG2: AG10001'); %Reads the coordinate location column
%Looks through the call group column and adds the coordinate cell to a new array if the call group is 'alarm'
for i = 1: length(callGroup)
   if strcmp('Alarm', callGroup(i))
       loc(i) = location(i);
   end
end
loc(~cellfun('isempty',loc)); %Deletes empty cells
