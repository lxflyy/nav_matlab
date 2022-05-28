close all;
clear;
clc;

file_name = '2022年05月28日16时41分43秒';

data = csvread(strcat(file_name, '.csv'), 1);
data_length = length(data);

plot(diff(data(:,2)));

save(file_name, 'data');