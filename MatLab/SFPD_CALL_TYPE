clear;clc;
[~, text] = xlsread('New_sfpd.csv', 'D1:D10000'); %Reads column D (call_type)
%Creates counter variables for each call type
MedIn = 0;
Alarm = 0;
StrucF = 0;
TraffCol = 0;
Other = 0;
Gas = 0;
VehFire = 0;
ElecH = 0;
OutFire = 0;
CitA = 0;
Fuel = 0;
%for loop looks through array and adds to the proper call type variable
for row = 1 : length(text)
    if strcmp('Medical Incident', text(row))
        MedIn=MedIn+1;
    end
    if strcmp(text(row), 'Alarms')
        Alarm=Alarm+1;
    end
    if strcmp(text(row), 'Structure Fire')
        StrucF=StrucF+1;
    end
    if strcmp(text(row), 'Traffic Collision')
        TraffCol=TraffCol+1;
    end
    if strcmp(text(row), 'Other')
        Other=Other+1;
    end
    if strcmp(text(row), 'Gas Leak (Natural and LP Gases)')
        Gas=Gas+1;
    end
    if strcmp(text(row), 'Vehicle Fire')
        VehFire=VehFire+1;
    end
    if strcmp(text(row), 'Electrical Hazard')
        ElecH=ElecH+1;
    end
    if strcmp(text(row), 'Outside Fire')
        OutFire=OutFire+1;
    end
    if strcmp(text(row), 'Citizen Assist / Service Call')
        CitA=CitA+1;
    end
    if strcmp(text(row), 'Fuel Spill')
        Fuel=Fuel+1;
    end
end
