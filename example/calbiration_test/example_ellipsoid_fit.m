close all; 
clear;
clc;

%% simulate data 
c = [-0.5; 0.2; 0.1]; % ellipsoid center
r = [1; 1; 2]; % semiaxis radii

[x,y,z] = ellipsoid(c(1),c(2),c(3),r(1),r(2),r(3),6);
D = [x(:),y(:),z(:)];

% add noise:
n = length(D);
noiseIntensity = 0.01; %噪声强度 
D = D + randn(n,3) * noiseIntensity;

%%%real data

mag= [
29.0417 -38.2667  11.0000 
 29.0417 -37.8500  11.3750 
 28.4333 -35.3333  13.6417 
 26.6667 -22.8500  30.0583 
 25.2250 -19.1833  38.0583 
 22.6667 -14.2917  53.0000 
 19.8083  -9.3750  69.6667 
 15.7083  -7.7917  91.4583 
 14.0167  -8.3333  99.3917 
 12.5000 -10.4583 104.3750 
 10.4167  -9.8500  96.9167 
 10.5000  -9.0417  69.2917 
 12.8917 -17.9750  36.2250 
 14.6667 -30.6000  14.4333 
 14.4583 -43.0417   4.8500 
 12.2917 -51.6000   5.7917 
  9.3750 -57.0583  11.4167 
  6.9583 -60.2667  21.7667 
  5.7500 -61.5167  31.7500 
  6.1000 -62.2083  40.5833 
  7.1250 -61.2083  56.1000 
  8.1667 -59.2250  69.2500 
  8.0417 -55.8500  81.9167 
  6.0000 -53.7667  82.9333 
  1.8083 -53.9583  75.3750 
 -2.7667 -53.0583  63.3917 
 -5.7917 -50.8917  53.5417 
 -7.5583 -48.8083  47.9167 
 -8.0000 -47.1833  45.2667 
 -8.4750 -46.0583  45.7917 
 -8.3917 -46.6417  43.7917 
 -8.5167 -46.5583  42.6250 
 -8.1667 -46.6417  42.4583 
 -7.9167 -47.4583  42.1250 
 -8.1250 -46.6000  45.3500 
 -7.6417 -46.9583  46.8500 
 -8.7667 -46.0167  48.9333 
 -9.0833 -44.8083  53.2917 
 -8.9167 -44.8917  57.3917 
 -8.9167 -44.4750  59.6417 
-10.5583 -39.0417  64.1667 
-10.1667 -30.0167  72.3083 
 -7.7250 -24.3750  83.1417 
 12.9333 -16.7083 119.8917 
 21.5417 -17.8333 122.7083 
 27.3917 -22.0000 123.6000 
 29.8500 -27.1250 123.5583 
 29.2917 -33.8500 120.9167 
 26.1000 -39.1250 118.4167 
 20.2917 -40.1250 117.1250 
 14.6667 -39.9333 115.9750 
  8.0417 -38.6667 113.1667 
  5.1000 -38.2250 110.8083 
  2.9750 -37.3083 108.7250 
  1.3333 -36.0167 107.3083 
  0.0833 -36.6833 105.2667 
 -0.2083 -36.2917 104.8917 
 -1.2083 -31.3333 106.0833 
 -2.2917 -25.8750 104.8500 
 -3.3333 -22.8083 100.6667 
 -4.5000 -20.0000  93.3333 
 -5.6250 -19.0583  85.7083 
 -5.4750 -18.9750  77.6833 
 -6.2250 -19.7917  68.4750 
 -5.7917 -20.0000  65.7500 
 -6.3500 -19.8750  63.1833 
 -8.8750 -25.4167  63.1000 
-10.0833 -29.2917  73.1667 
 -9.3750 -34.7500  80.2500 
 -6.4750 -38.2667  88.0000 
 -3.8333 -41.7917  90.5583 
 -0.9750 -47.7250  86.2083 
  1.7667 -51.9333  81.9583 
  5.1417 -55.8083  77.5167 
  8.3500 -59.5000  69.6250 
 11.6833 -62.5167  62.3750 
 17.5583 -64.2250  56.0583 
 20.9750 -64.7250  57.0417 
 24.2250 -64.9583  52.8333 
 28.0000 -64.2667  47.8333 
 31.3750 -64.1417  44.2500 
 39.7250 -59.0000  40.7500 
 43.0167 -55.2667  38.3750 
 45.5000 -49.5000  37.4750 
 46.5167 -45.0167  39.6417 
 47.0417 -41.3333  43.2250 
 47.8333 -36.7667  48.5167 
 47.4333 -31.6417  54.6250 
 46.3083 -26.6250  61.8750 
 45.5000 -22.8083  71.0000 
 43.0167 -19.1417  80.1667 
 39.4750 -15.7250  89.0167 
0.2083 -12.8750 111.5417 
 4.9750 -13.3750 117.4333 
 18.3083 -14.1417 119.5583 
 10.9333 -16.5417 119.3917 
  5.6667 -20.1000 117.3500 
  1.7667 -23.8333 112.9583 
 -2.0167 -25.4167 106.1667 
 -4.3083 -28.2500 100.8750 
 -6.2250 -30.2500  95.0000 
 -6.8750 -30.5167  92.6833 
 -7.6417 -30.0167  90.8500 
 -7.9167 -29.4333  88.8083 
 -8.9167 -29.5167  85.3500 
 -9.3750 -30.2917  80.9167 
-10.3333 -30.7250  77.5167 
-10.0833 -31.6833  74.3083 
-10.0833 -32.6667  73.5000 
-10.5000 -31.6833  73.5833 
-10.5583 -31.2250  73.3333 
-10.4167 -32.0417  71.7917 
-10.7667 -33.4750  67.8333 
-10.6000 -34.3917  64.0833 
-11.3333 -35.1000  62.3333 
-10.4583 -36.5583  61.2667 
-10.8917 -35.6000  63.7500 
 -9.6833 -27.8083  71.0000 
 -6.1000 -20.6417  78.8333 
 -3.0583 -15.8083  82.3750 
  2.3333 -11.8500  83.9167 
  7.4750  -9.3083  84.2500 
 13.0583  -8.1833  83.7083 
 19.0833  -8.1000  81.4333 
 22.7667  -8.4583  80.1250 
 26.6667 -10.1250  75.4583 
 30.2083 -12.7500  67.5417 
 33.1833 -22.3083  40.3750 
 31.5417 -41.3750  12.7500 
 30.1667 -52.9167  10.1000 
 28.3083 -59.1417  13.7667 
 26.5167 -63.1417  20.5417 
 24.4583 -65.3083  31.2917 
 22.2917 -65.8083  42.4583 
 20.1250 -64.2667  55.1250 
 18.2083 -50.0833 100.3750 
 18.5167 -44.0417 110.4333 
 18.6833 -42.6833 112.5167 
 16.6250 -42.0000 113.0417 
 20.5583 -40.2917 115.8917 
 17.0000 -42.1417 113.0417 
 11.5000 -46.6833 104.1667 
  2.9750 -54.8083  76.0167 
  7.6417 -58.7667  70.1000 
 12.4167 -59.5000  75.1250 
 16.0417 -60.0417  74.7083 
 19.8500 -61.5833  70.3917 
 19.7250 -60.8917  74.1833 
 11.3750 -58.8333  74.5583 
  4.8750 -56.8333  70.6000 
 -2.1417 -53.1000  62.4583 
 -6.9583 -46.6833  63.2667 
 -8.2500 -39.1250  76.5833 
 -7.3083 -35.1417  86.9333 
 -3.7500 -31.3333 100.1250 
  1.2500 -28.7083 111.0000 
  8.1250 -28.3500 119.5167 
 18.0000 -31.6417 122.8083 
 26.9583 -35.1417 120.1250 
 35.8333 -38.2250 112.0167 
 43.2917 -40.1667  97.8500 
 49.7667 -39.5833  65.8750 
 49.6000 -40.9167  66.1667 
 47.6667 -41.5167  84.6000 
 42.7250 -38.6667 102.4583 
 33.9333 -33.4333 118.1000 
 25.2667 -27.1667 125.1000 
 16.3083 -20.9583 124.2083 
  8.4750 -15.2250 114.3083 
  3.6250 -12.1667  98.4583 
 -0.8917 -13.9583  78.6667 
-10.3750 -39.2083  55.5167 
 30.5583 -27.7667 121.1000 
 33.1417 -27.0417 119.6000 
 36.0583 -26.2250 115.9750 
 38.0833 -25.7250 113.2500 
 38.8750 -24.2083 111.1250 
 39.6417 -23.5167 109.7083 
 40.1667 -23.6000 108.6833 
 41.0833 -25.3750 107.9583 
 42.6833 -27.0833 104.0833 
 45.1000 -29.8333  98.4167 
 47.6000 -33.3500  91.6667 
 47.9583 -35.9167  86.3750 
 48.9167 -39.8917  80.7917 
 48.6833 -44.2667  71.1250 
 47.3917 -48.9167  54.7083 
 44.4583 -52.4583  41.6000 
 39.7250 -55.9333  30.2250 
 35.5833 -58.2917  22.0417 
 28.9167 -59.5000  15.4750 
 23.4167 -60.3083  12.9167 
 18.1250 -60.6250  12.1000 
 13.5000 -59.2667  11.3333 
 10.2500 -58.3333  12.6417 
  8.6833 -58.0167  13.3750 
  6.7083 -56.5583  14.1417 
  4.3500 -55.1667  15.7250 
  1.0583 -52.7917  17.6833 
 -1.2917 -51.0583  20.0833 
 -4.7917 -44.3083  24.1667 
 -6.9167 -39.4750  32.1417 
 -8.8083 -34.4750  43.9583 
-10.2083 -30.9583  57.1667 
 -9.2083 -27.8500  76.6250 
 -6.2667 -27.9333  93.7667 
 -0.6833 -28.7083 106.8917 
  5.1833 -29.7917 114.6667 
  9.8500 -31.7250 118.5417 
 23.6667 -34.5167 121.0167 
 29.4333 -35.3750 118.8333 
 33.6667 -35.8333 115.9333 
 36.4333 -35.4167 113.4167 
 39.4750 -35.3333 109.4583 
 36.3500 -36.1000 113.0833 
 25.9583 -38.8083 116.7500 
 22.5000 -41.5583 115.2500 
 20.6833 -38.6667 117.3917 
 18.0417 -40.1667 115.9750 
 16.9583 -40.1667 116.1417 
 22.1667 -33.4333 121.7667 
 28.3500 -27.6667 123.2250 
 30.6000 -27.0833 121.7250 
 32.1667 -28.8917 120.2500 
 30.5583 -33.5833 119.6417 
 28.5167 -37.3083 118.0583 
 25.7917 -35.8750 119.9333 
 20.2917 -37.6250 120.2500 
 18.8750 -39.3917 119.6000 

    ];



D = mag./1.0;
% D = D(1:15,:);
n = length(D);

%% remove outliter
% 计算各个点到平均点的欧氏距离
% m = mean(D);
% for i=1:length(D)
%     d(i) = norm(D(i,:) - m);
% end
% m = mean(d);
% for i=1:length(d)
%     if(d(i) > 3*m)
%         D(i,:) =[];
%     end
% end

%% matlab internal fitting 

[A, b, expmfs] = magcal(D, 'auto')
%fprintf( 'away from cetner %.5g\n', norm( b' - c) );
C = (D-b)*A; % calibrated data


figure(1)
plot3(D(:,1),D(:,2),D(:,3),'LineStyle','none','Marker','X','MarkerSize',2)
hold on
grid(gca,'on')
plot3(C(:,1),C(:,2),C(:,3),'LineStyle','none','Marker', ...
            'o','MarkerSize',2,'MarkerFaceColor','r') 
axis equal
xlabel('uT'); ylabel('uT');zlabel('uT') 
legend('Uncalibrated Samples', 'Calibrated Samples','Location', 'southoutside')
title("Uncalibrated vs Calibrated" + newline + "Magnetometer Measurements")
axis equal
hold off


figure;
plot(D(:,1), D(:,3) ,'LineStyle','none','Marker','X','MarkerSize',2);
hold on;
grid(gca,'on')
plot(C(:,1), C(:,3),'LineStyle','none','Marker',   'o','MarkerSize',2,'MarkerFaceColor','r');
legend('Uncalibrated Samples', 'Calibrated Samples','Location', 'southoutside')
title("Uncalibrated vs Calibrated" + newline + "Magnetometer Measurements")
axis equal
hold off

figure;
plot(D(:,2), D(:,3) ,'LineStyle','none','Marker','X','MarkerSize',2);
hold on;
grid(gca,'on')
plot(C(:,2), C(:,3),'LineStyle','none','Marker',   'o','MarkerSize',2,'MarkerFaceColor','r');
legend('Uncalibrated Samples', 'Calibrated Samples','Location', 'southoutside')
title("Uncalibrated vs Calibrated" + newline + "Magnetometer Measurements")
axis equal
hold off




% %%  elliposid test 1 
% [A, b, expmfs, er]=ellipsoid_fit(D, 5);
% 
% A
% b
% expmfs
% er



%% DIP13 test
% feature_scale = 50;
% mag = mag ./ feature_scale;
% 
%  [mis, bias, lamda, inter, J] = dip13 (acc, mag, 1, 0.001);
% 
%  fprintf('using DIP13 mehold:\n');
%  
%  figure;
%  plot(1:length(J), J, '*-');
%   title('DIP13');
%   
% %fprintf('inter = %d\n', inter);
% %mis = mis ./ mis(1,1);
% mis
% 
% bias' .* feature_scale
% fprintf('incli: %f\r\n',  rad2deg(acos(lamda)) - 90);
