sig_mat = zeros(511,24);

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E11');
data = load(datadir, "-ascii");

sig_mat(1:511,1) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E22');
data = load(datadir, "-ascii");

sig_mat(:,2) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E33');
data = load(datadir, "-ascii");

sig_mat(1:511,3) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E44');
data = load(datadir, "-ascii");

sig_mat(1:511,4) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E55');
data = load(datadir, "-ascii");

sig_mat(1:511,5) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E66');
data = load(datadir, "-ascii");

sig_mat(1:511,6) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E77');
data = load(datadir, "-ascii");

sig_mat(1:511,7) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E88');
data = load(datadir, "-ascii");

sig_mat(1:511,8) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E99');
data = load(datadir, "-ascii");

sig_mat(1:511,9) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1010');
data = load(datadir, "-ascii");

sig_mat(1:511,10) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1111');
data = load(datadir, "-ascii");

sig_mat(1:511,11) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1212');
data = load(datadir, "-ascii");

sig_mat(1:511,12) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1313');
data = load(datadir, "-ascii");

sig_mat(1:511,13) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1414');
data = load(datadir, "-ascii");

sig_mat(1:511,14) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1515');
data = load(datadir, "-ascii");

sig_mat(1:511,15) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1616');
data = load(datadir, "-ascii");

sig_mat(1:511,16) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1717');
data = load(datadir, "-ascii");

sig_mat(1:511,17) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1818');
data = load(datadir, "-ascii");

sig_mat(1:511,18) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E1919');
data = load(datadir, "-ascii");

sig_mat(1:511,19) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E2020');
data = load(datadir, "-ascii");

sig_mat(1:511,20) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E2121');
data = load(datadir, "-ascii");

sig_mat(1:511,21) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E2222');
data = load(datadir, "-ascii");

sig_mat(1:511,22) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E2323');
data = load(datadir, "-ascii");

sig_mat(1:511,23) = data;

datadir = ('D:\Documents\Fourth Year (Final year... maybe)\BME 772\BME 772 matlab stuff\Lab 1\lab 1 data\E2424');
data = load(datadir, "-ascii");

sig_mat(1:511,24) = data;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Case 1
M1 = 1;
M2 = 4;
M = (M2-M1) + 1;

hold on;

plot(sig_mat(1:511,1))
plot(sig_mat(1:511,2))
plot(sig_mat(1:511,3))
plot(sig_mat(1:511,4))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of ERP Signals From E11 to E44');

hold off;

sig_avg1 = zeros(511,1);

for i = 1: M
    for k = 1: 511
        sig_avg1(k,1) = sig_avg1(k,1) + sig_mat(k,i);
    end
end

sig_avg1 = (1/M)*sig_avg1;

figure;
plot(sig_avg1(1:511,1))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of the Average of ERP Signals From E11 to E44');

noise_pow1_1 = 0;
noise_pow1 = 0;
for i = 1:M
    for k = 1:511
        noise_pow1_1 = noise_pow1_1 + (sig_mat(k,i) - sig_avg1(k,1)).^2;
    end
    noise_pow1 = noise_pow1 + noise_pow1_1;
end

noise_pow1 = (1/((511*0.001)*(M-1)))*noise_pow1;

signal_pow1 = 0;
for i = 1:511
    signal_pow1 = signal_pow1 + ((sig_avg1(i,1)).^2 - noise_pow1/M);
end

signal_pow1 = (1/(511*0.001))*signal_pow1;

snr1 = signal_pow1/noise_pow1;

euclid_dist1_1 = 0;
euclid_dist1 = 0
for i = 1:M
    for k = 1:511
        euclid_dist1_1 = euclid_dist1_1 + (sig_mat(k,i) - sig_avg1(k,1)).^2;
    end
    euclid_dist1 = sqrt(euclid_dist1 + euclid_dist1_1);
end

euclid_dist1 = (1/M)*euclid_dist1;

%Case 2
M1 = 1;
M2 = 8;
M = (M2-M1) + 1;

figure;
hold on;

plot(sig_mat(1:511,1))
plot(sig_mat(1:511,2))
plot(sig_mat(1:511,3))
plot(sig_mat(1:511,4))
plot(sig_mat(1:511,5))
plot(sig_mat(1:511,6))
plot(sig_mat(1:511,7))
plot(sig_mat(1:511,8))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of ERP Signals From E11 to E88');

hold off;

sig_avg2 = zeros(511,1);

for i = 1: M
    for k = 1: 511
        sig_avg2(k,1) = sig_avg2(k,1) + sig_mat(k,i);
    end
end

sig_avg2 = (1/M)*sig_avg2;

figure;
plot(sig_avg2(1:511,1))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of the Average of ERP Signals From E11 to E88');

noise_pow1_2 = 0;
noise_pow2 = 0;
for i = 1:M
    for k = 1:511
        noise_pow1_2 = noise_pow1_2 + (sig_mat(k,i) - sig_avg2(k,1)).^2;
    end
    noise_pow2 = noise_pow2 + noise_pow1_2;
end

noise_pow2 = (1/((511*0.001)*(M-1)))*noise_pow2;

signal_pow2 = 0;
for i = 1:511
    signal_pow2 = signal_pow2 + ((sig_avg2(i,1)).^2 - noise_pow2/M);
end

signal_pow2 = (1/(511*0.001))*signal_pow2;

snr2 = signal_pow2/noise_pow2;

euclid_dist1_2 = 0;
euclid_dist2 = 0
for i = 1:M
    for k = 1:511
        euclid_dist1_2 = euclid_dist1_2 + (sig_mat(k,i) - sig_avg2(k,1)).^2;
    end
    euclid_dist2 = sqrt(euclid_dist2 + euclid_dist1_2);
end

euclid_dist2 = (1/M)*euclid_dist2;

%Case 3
M1 = 1;
M2 = 12;
M = (M2-M1) + 1;

figure;
hold on;

plot(sig_mat(1:511,1))
plot(sig_mat(1:511,2))
plot(sig_mat(1:511,3))
plot(sig_mat(1:511,4))
plot(sig_mat(1:511,5))
plot(sig_mat(1:511,6))
plot(sig_mat(1:511,7))
plot(sig_mat(1:511,8))
plot(sig_mat(1:511,9))
plot(sig_mat(1:511,10))
plot(sig_mat(1:511,11))
plot(sig_mat(1:511,12))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of ERP Signals From E11 to E1212');

hold off;

sig_avg3 = zeros(511,1);

for i = 1: M
    for k = 1: 511
        sig_avg3(k,1) = sig_avg3(k,1) + sig_mat(k,i);
    end
end

sig_avg3 = (1/M)*sig_avg3;

figure;
plot(sig_avg3(1:511,1))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of the Average of ERP Signals From E11 to E1212');

noise_pow1_3 = 0;
noise_pow3 = 0;
for i = 1:M
    for k = 1:511
        noise_pow1_3 = noise_pow1_3 + (sig_mat(k,i) - sig_avg3(k,1)).^2;
    end
    noise_pow3 = noise_pow3 + noise_pow1_3;
end

noise_pow3 = (1/((511*0.001)*(M-1)))*noise_pow3;

signal_pow3 = 0;
for i = 1:511
    signal_pow3 = signal_pow3 + ((sig_avg3(i,1)).^2 - noise_pow3/M);
end

signal_pow3 = (1/(511*0.001))*signal_pow3;

snr3 = signal_pow3/noise_pow3;

euclid_dist1_3 = 0;
euclid_dist3 = 0
for i = 1:M
    for k = 1:511
        euclid_dist1_3 = euclid_dist1_3 + (sig_mat(k,i) - sig_avg3(k,1)).^2;
    end
    euclid_dist3 = sqrt(euclid_dist3 + euclid_dist1_3);
end

euclid_dist3 = (1/M)*euclid_dist3;

%Case 4
M1 = 1;
M2 = 24;
M = (M2-M1) + 1;

figure;
hold on;

plot(sig_mat(1:511,1))
plot(sig_mat(1:511,2))
plot(sig_mat(1:511,3))
plot(sig_mat(1:511,4))
plot(sig_mat(1:511,5))
plot(sig_mat(1:511,6))
plot(sig_mat(1:511,7))
plot(sig_mat(1:511,8))
plot(sig_mat(1:511,9))
plot(sig_mat(1:511,10))
plot(sig_mat(1:511,11))
plot(sig_mat(1:511,12))
plot(sig_mat(1:511,13))
plot(sig_mat(1:511,14))
plot(sig_mat(1:511,15))
plot(sig_mat(1:511,16))
plot(sig_mat(1:511,17))
plot(sig_mat(1:511,18))
plot(sig_mat(1:511,19))
plot(sig_mat(1:511,20))
plot(sig_mat(1:511,21))
plot(sig_mat(1:511,22))
plot(sig_mat(1:511,23))
plot(sig_mat(1:511,24))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of ERP Signals From E11 to E2424');

hold off;

sig_avg4 = zeros(511,1);

for i = 1: M
    for k = 1: 511
        sig_avg4(k,1) = sig_avg4(k,1) + sig_mat(k,i);
    end
end

sig_avg4 = (1/M)*sig_avg4;

figure;
plot(sig_avg4(1:511,1))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of the Average of ERP Signals From E11 to E2424');

noise_pow1_4 = 0;
noise_pow4 = 0;
for i = 1:M
    for k = 1:511
        noise_pow1_4 = noise_pow1_4 + (sig_mat(k,i) - sig_avg4(k,1)).^2;
    end
    noise_pow4 = noise_pow4 + noise_pow1_4;
end

noise_pow4 = (1/((511*0.001)*(M-1)))*noise_pow4;

signal_pow4 = 0;
for i = 1:511
    signal_pow4 = signal_pow4 + ((sig_avg4(i,1)).^2 - noise_pow4/M);
end

signal_pow4 = (1/(511*0.001))*signal_pow4;

snr4 = signal_pow4/noise_pow4;

euclid_dist1_4 = 0;
euclid_dist4 = 0
for i = 1:M
    for k = 1:511
        euclid_dist1_4 = euclid_dist1_4 + (sig_mat(k,i) - sig_avg4(k,1)).^2;
    end
    euclid_dist4 = sqrt(euclid_dist4 + euclid_dist1_4);
end

euclid_dist4 = (1/M)*euclid_dist4;

%Case 5
M1 = 17;
M2 = 24;
M = (M2-M1) + 1;

figure;
hold on;

plot(sig_mat(1:511,17))
plot(sig_mat(1:511,18))
plot(sig_mat(1:511,19))
plot(sig_mat(1:511,20))
plot(sig_mat(1:511,21))
plot(sig_mat(1:511,22))
plot(sig_mat(1:511,23))
plot(sig_mat(1:511,24))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of ERP Signals From E1717 to E2424');

hold off;

sig_avg5 = zeros(511,1);

for i = 1: M
    for k = 1: 511
        sig_avg5(k,1) = sig_avg5(k,1) + sig_mat(k,i);
    end
end

sig_avg5 = (1/M)*sig_avg5;

figure;
plot(sig_avg5(1:511,1))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of the Average of ERP Signals From E1717 to E2424');

noise_pow1_5 = 0;
noise_pow5 = 0;
for i = 1:M
    for k = 1:511
        noise_pow1_5 = noise_pow1_5 + (sig_mat(k,i) - sig_avg5(k,1)).^2;
    end
    noise_pow5 = noise_pow5 + noise_pow1_5;
end

noise_pow5 = (1/((511*0.001)*(M-1)))*noise_pow5;

signal_pow5 = 0;
for i = 1:511
    signal_pow5 = signal_pow5 + ((sig_avg5(i,1)).^2 - noise_pow5/M);
end

signal_pow5 = (1/(511*0.001))*signal_pow5;

snr5 = signal_pow5/noise_pow5;

euclid_dist1_5 = 0;
euclid_dist5 = 0
for i = 1:M
    for k = 1:511
        euclid_dist1_5 = euclid_dist1_5 + (sig_mat(k,i) - sig_avg5(k,1)).^2;
    end
    euclid_dist5 = sqrt(euclid_dist5 + euclid_dist1_5);
end

euclid_dist5 = (1/M)*euclid_dist5;

%Case 6
M1 = 13;
M2 = 24;
M = (M2-M1) + 1;

figure;
hold on;

plot(sig_mat(1:511,13))
plot(sig_mat(1:511,14))
plot(sig_mat(1:511,15))
plot(sig_mat(1:511,16))
plot(sig_mat(1:511,17))
plot(sig_mat(1:511,18))
plot(sig_mat(1:511,19))
plot(sig_mat(1:511,20))
plot(sig_mat(1:511,21))
plot(sig_mat(1:511,22))
plot(sig_mat(1:511,23))
plot(sig_mat(1:511,24))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of ERP Signals From E1313 to E2424');

hold off;

sig_avg6 = zeros(511,1);

for i = 1: M
    for k = 1: 511
        sig_avg6(k,1) = sig_avg6(k,1) + sig_mat(k,i);
    end
end

sig_avg6 = (1/M)*sig_avg6;

figure;
plot(sig_avg6(1:511,1))
grid
xlabel('Time (ms)');
ylabel('Voltage, Arbritrary Units');
title('Plot of the Average of ERP Signals From E1313 to E2424');

noise_pow1_6 = 0;
noise_pow6 = 0;
for i = 1:M
    for k = 1:511
        noise_pow1_6 = noise_pow1_6 + (sig_mat(k,i) - sig_avg6(k,1)).^2;
    end
    noise_pow6 = noise_pow6 + noise_pow1_6;
end

noise_pow6 = (1/((511*0.001)*(M-1)))*noise_pow6;

signal_pow6 = 0;
for i = 1:511
    signal_pow6 = signal_pow6 + ((sig_avg6(i,1)).^2 - noise_pow6/M);
end

signal_pow6 = (1/(511*0.001))*signal_pow6;

snr6 = signal_pow6/noise_pow6;

euclid_dist1_6 = 0;
euclid_dist6 = 0
for i = 1:M
    for k = 1:511
        euclid_dist1_6 = euclid_dist1_6 + (sig_mat(k,i) - sig_avg6(k,1)).^2;
    end
    euclid_dist6 = sqrt(euclid_dist6 + euclid_dist1_6);
end

euclid_dist6 = (1/M)*euclid_dist6;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Signals = {'E11 to E44'; 'E11 to E88'; 'E11 to E1212'; 'E11 to E2424'; 'E1717 to E2424'; 'E1313 to E2424'};
M = [4;8;12;24;8;12];
SNR = [snr1;snr2;snr3;snr4;snr5;snr6];
EuclideanDistance = [euclid_dist1;euclid_dist2;euclid_dist3;euclid_dist4;euclid_dist5;euclid_dist6];

T = table(Signals, M, SNR, EuclideanDistance);

writetable(T,'tabulated_results.xls','Sheet',1,'Range','B2:E8');
