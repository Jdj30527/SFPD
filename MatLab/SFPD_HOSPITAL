clear;clc;

[~, text1] = xlsread('sfpd_dispatch_data_subset.csv', 'M2: M10001'); %Reads column M (hospital_timestamp)
%Checkd the column for how many cells were not blank to count how many
%times the hospital was actually needed
num_nonblank = sum(strcmp(text1(:),''));
