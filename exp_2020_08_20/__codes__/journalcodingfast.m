%% load the signal of experimental data
d=importdata('R1D4.txt');                       % imported data from experimental data
I1 = d.data(:, 2);                                  % Read I data from file
Q1 = d.data(:, 4);                                  % Read Q data from file
I2 = d.data(:, 6);                                  % Read I data from file
Q2 = d.data(:, 8);                                  % Read Q data from file

%% Step 1: Filtering the raw signal
fs=1000;                                            % Sampling Frequency
t1 = 1/fs;                                          % Sampling period       
L=120550;                                           % Number of the level of the signal
t = (0:L-1)*t1;                                     % Time vector
fc=10;                                              % Carrier Frequency
fc_n = fc .* 2 /fs;                                 % normalized frequency
B = fir1(1000,fc_n);                                % FIR filter order
subplot(2,2,1);
I3=filter(B,1,I1);                                  % filter I1 signal
plot(t,I3);                                         % plotting I1 signal     
hold on
Q3=filter(B,1,Q1);                                  % filter Q1 signal
plot(t,Q3);                                         % plotting Q1 signal

subplot(2,2,2);
I4=filter(B,1,I2);                                  % filtering I2 signal
plot(t,I4);                                         % plotting I2 signal
hold on
Q4=filter(B,1,Q2);                                  % filtering Q2 Signal
plot(t,Q4);                                         % plotting Q2 Signal

%%  I-Q Plot Data Sets
I3=I3(1:20000,:);
Q3=Q3(1:20000,:);
subplot(2,2,3); 
plot(I3,Q3)                                         % plot I1/Q1 data set. 
grid
grid minor
xlabel('Channel I1')
ylabel('Channel Q1')
axis equal
title(['I1-Q1 plot'])

I4=I4(1:20000,:);
Q4=Q4(1:20000,:);
subplot(2,2,4); 
plot(I4,Q4)                                        % plot I2/Q2 data set. 
grid
grid minor
xlabel('Channel I2')
ylabel('Channel Q2')
axis equal
title(['I2-Q2 plot'])
% %% FFT of the signal
% 
% k=importdata('FFTdata.txt');                        % imported data from experimental data
% x3 = k.data(:, 6);                                  % Read I data from file
% Fs = 1000;                                          % Sampling frequency   
% t=0:1/Fs:69.99;                                     % Time vector of 1 second
% x=x3(1:7000);                                       % fixed time domain
% nfft=1024;                                          % Length of FFT
% X=fft(x,nfft);                                      % FFT is symmetric throw away second half
% X=X(1:nfft/2);                                      % Take the magnitude of fft of x
% mx=abs(X);                                          % Frequency Vector
% f=((0:nfft/2-1)*Fs/nfft)/10;                        % Generate the plot, title and labels
% subplot(3,2,5);
% plot(f,mx);                                         % plot the frequency content of the signal
% title('Mixed Signal Spectrum');                     
% xlabel('Frequency(Hz)');
% ylabel('Power');
% subplot(3,2,6);
% plot(f,mx);                                         % plot the frequency ocntent of the signal
% title('Mixed Signal Spectrum');
% xlabel('Frequency(Hz)');
% ylabel('Power');

