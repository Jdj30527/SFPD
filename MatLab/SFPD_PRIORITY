clear;clc;
[num, text] = xlsread('New_sfpd.csv', 'V1:V10000'); %Reads column V (original_priority)
[num2, ~] = xlsread('New_sfpd.csv', 'X1:X10000'); %Reads column X (final_priority)
%Creates counter variables
increase = 0;
decrease = 0;
equal = 0;
%for loop looks through both columns and adds to the appropriate variables
%the loop also makes sure the column does not have any NaNs
for row = 1:length(num)
    if num(row) < num2(row) && isnan(num(row)) == 0
        increase = increase + 1;
    end
    if num(row) > num2(row) && isnan(num(row)) == 0
        decrease = decrease + 1;
    end
    if num(row) == num2(row) && isnan(num(row)) == 0
        equal = equal + 1;
    end
end
