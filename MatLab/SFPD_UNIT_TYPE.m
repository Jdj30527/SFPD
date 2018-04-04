clear;clc;
%Created counter variables for all the unit types
medic = 0;
engine = 0;
chief = 0;
rescuesqua = 0;
truck = 0;
private = 0;
support = 0;
rescuecap = 0;
investigation = 0;
[~, text] = xlsread('sfpd_dispatch_data_subset.csv', 'AB2: AB10001'); %Reads column A (unit_type)
%for loop to look through the array and adds to the appropriate variable
for i = 1: length(text)
    if strcmp('MEDIC', text(i))
        medic = medic + 1;
    end
    if strcmp('ENGINE', text(i))
        engine = engine + 1;
    end
    if strcmp('CHIEF', text(i))
        chief = chief + 1;
    end
    if strcmp('PRIVATE', text(i))
        private = private + 1;
    end
    if strcmp('RESCUE SQUAD', text(i))
        rescuesqua = rescuesqua + 1;
    end
    if strcmp('RESCUE CAPTAIN', text(i))
        rescuecap = rescuecap + 1;
    end
    if strcmp('TRUCK', text(i))
        truck = truck + 1;
    end
    if strcmp('SUPPORT', text(i))
        support = support + 1;
    end
    if strcmp('INVESTIGATION', text(i))
        investigation = investigation + 1;
    end
end
