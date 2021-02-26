% %load the signal of experimental data
  d=importdata('R2D7.txt');                          % imported data from experimental data
  I1 = d.data(:, 2);                                  % Read I data from file
  Q1 = d.data(:, 4);                                  % Read Q data from file
  I2 = d.data(:, 6);                                  % Read I data from file
  Q2 = d.data(:, 8);                                  % Read Q data from file


%% ICA with the JADE Algorithm for separating combined mixtures 
%   A simple demonstration illustrating the performance of ICA with Jade Algorithm on synthetic mixtures of
% % Joint Approximate Diagnolaziation of Eigenmatrics
% % disp(' ')
disp(' ');
disp('>>> Generating random circular and noncircular source signals');

z=importdata('R2D7.txt');                                    % import data set 
x_separated1= z.data(:,10);                                   % input signal parameter
x_separated2= z.data(:,12);                                   % input signal parameter
x2=x_separated1;                                              % input signal parameter
x3=x_separated2;                                              % input signal parameter
Fs = 1000;                                                    % Sampling frequency                    
t1 = 1/Fs;                                                    % Sampling period       
L = 120550;                                                   % Length of signal
t = (0:L-1)*t1;                                               % Time vector
T=120550;
K=2;                                                          % Number of sources and observations
NdB=-30;                                                      % kind of noise level in dB
eta = [ones(1, K/2), 0, 0.25, 0.5, 0.75, 1, 0, 0.25, 0.5, 0.75, 0.99]; 
                                       
re_ampl = sqrt(1 + eta);                                       % real-part relative amplitude
im_ampl = sqrt(1 - eta);                                       % imaginary-part relative amplitude

disp(['- sample size: ', num2str(T)]);

j = sqrt(-1);

S_true = zeros(K, T);

disp(['> sources #1-', num2str(K/4), ': real-valued, sub-Gaussian']);
S_true(1,:)= x2(1:T); 
disp(['> sources #', num2str(K/4+1), '-', num2str(K/2), ': real-valued, super-Gaussian']);
S_true(2,:)= x3(1:T);
S_true = S_true - mean(S_true')'*ones(1, T);                                % remove mean
S_true = diag(1./sqrt(diag(S_true*S_true')/T))*S_true;                      % unit-variance normalization

disp(' ');
disp('>>> Second-order circularity (pseudocovariance is null for circular sources)');

pseudocovariance = abs(transpose(diag(S_true*transpose(S_true)))/T)        % (absolute normalized) pseudocovariance is null for circular signals
disp(' '); disp('Please, press any key to continue...'); disp(' ');

Tplot=min(T,120550);


%Comments from here( Plotting options)
disp(' ');
disp(['>>> Plotting original sources (real part only, first ', num2str(Tplot), ' samples)'])
figure
set(gcf, 'Name', 'ICA With the JADE Algorithm: Original source signals');
subplot(K, 1, 1);
 for k = 1:K
    subplot(K, 1, k);
    plot(0:Tplot-1, real(S_true(k, 1:Tplot)), 'b');                        % plot real parts only
    %plot(t, real(S_true(k, 1:Tplot)), 'b');
    set(gca, 'XTickLabel', []);
    ylabel(['s_{', num2str(k), '}']);
 end
set(gca, 'XTickLabelMode', 'auto');
xlabel('sample number');
subplot(K, 1, 1);
title('Original source signals');
disp(' '); disp('Please, press any key to continue...'); disp(' ');
disp(' ');
disp('>>> Normalized kurtosis of original sources:')
kurt = zeros(1, K);
for k = 1:K
    s = S_true(k, :);
    kurt(k) = (mean(abs(s).^4) - 2*mean(abs(s).^2)^2 - abs(mean(s.^2))^2)/mean(abs(s.^2))^2;
    disp(['- source #', num2str(k), ': ', num2str(kurt(k))]);
end
disp(' '); disp('Please, press any key to continue...'); disp(' ');
pause
%%% Generate mixing matix and observed signals
disp(' ');
disp('>>> Generating complex-valued random mixture');

% Changed Observed Mixtures
H_true = randn(K, K) + j*randn(K, K);                         % random complex-valued mixing matrix
noiseamp 	= 10^(NdB/20) ;
X = H_true*S_true;                                             % observed mixture
% plot true souces and estimated sources
disp(' ');
disp(['>>> Plotting observed mixture (real part only, first ', num2str(Tplot), ' samples)']);

% Comment for a while(161-173)
 figure
 set(gcf, 'Name', 'ICA with JADE Algorithm: Observed mixtures');
 subplot(K, 1, 1);
 for k = 1:K
    subplot(K, 1, k);                                      %newly added
    plot(0:Tplot-1,real(X(k, 1:Tplot)),'b');               %plot observed mixtures
    set(gca, 'XTickLabel', []);    
    ylabel(['x_{', num2str(k), '}']);
  end
set(gca, 'XTickLabelMode', 'auto');
xlabel('sample number');
subplot(K, 1, 1);
title('Observed mixtures');
disp(' '); disp('Please, press any key to continue...'); disp(' ');
pause



%%% Perform source separation
% 
arguments = {}; 


% 2) Regression-based deflation:
%
% arguments = {'deftype', 'regression'}; 


% 3) Aim at two sub-Gaussian sources first, running a fixed number of
% iterations per independent component:
% 
% arguments = {'deftype', 'regression', 'kurtsign', [-1, -1, zeros(1, K-2)], 'tol', -1, 'maxiter', 10}


% 4) No prewhitening, regression-based deflation, dimensionality reduction
%
% arguments = {'deftype', 'regression', 'prewhi', false, 'dimred', true}

arguments = {arguments{:}, 'verbose', true}; % execute in verbose mode

[S_new, H, iter, W] = robustica(X, arguments);


% To compare with FastICA with cubic nonlinearity, use:
% 
% [S, H, iter, W] = fastica(X, [], tol, max_it, 1, 'o', 0, [], 1);   % deflationary orthogonalization
% SMSE_fastICA = 10*log10(compute_smse(S_true, S))


disp('Please, press any key to continue...'); disp(' ');
pause



%%% Measure source separation performance

% test type of estimated sources (to see, e.g., if extraction ordering is as required)

disp(' ');
disp('>>> Normalized kurtosis of extracted sources:')

kurt = zeros(1, K);

% Comment for a while

 for k = 1:K
     s = S_new(k, :);
     kurt(k) = (mean(abs(s).^4) - 2*mean(abs(s).^2)^2 - abs(mean(s.^2))^2)/mean(abs(s.^2))^2;
     disp(['- source #', num2str(k), ': ', num2str(kurt(k))]);
end



disp(' '); disp('Please, press any key to continue...'); disp(' ');
pause
disp(' ');
disp('>>> Sorting and scaling the estimated sources');

% re-arrange the sources and work out reconstruction error
% (the following ordering method is suboptimal, but works fine of sources are well separated;
%  a more elaborate version is implemented in function 'compute_smse.m' available in the present package; 
%  use directly: SMSE = compute_smse(S_true, S);

P = zeros(K, K);                                                     % permutation matrix
for k = 1:K
    s = S_new(k, :);
    r = S_true*s';                                                   % cross-correlation
    [r_max, pos_max] = max(abs(r));
    P(pos_max, k) = r(pos_max)/(s*s');                               % ordering with optimum scale
end

S_new = P*S_new;

% plot true souces and estimated sources

disp(' ');
disp(['>>> Plotting actual and estimated sources (real part only, first ', num2str(Tplot), ' samples)']);

figure
set(gcf, 'Name', 'ICA with the JADE Algorithm demo: Source separation results');
subplot(K, 1, 1);
for k = 1:K
    subplot(K, 1, k);
   plot(0:Tplot-1, real(S_true(k, 1:Tplot)), 'b'); 
   hold on;                                                     % plot real parts on
    plot(0:Tplot-1, real(S_new(k, 1:Tplot)), 'r');
    set(gca, 'XTickLabel', []);
    ylabel(['s_{', num2str(k), '}']);
    set(gca, 'XTickLabelMode', 'auto');
 xlabel('sample number');
end

title('ICA with the JADE Algorithm''s source separation results; blue lines: actual sources; red lines: estimated sources');



disp(' '); disp('Please, press any key to continue...'); disp(' ');
pause



disp(' ');
disp('>>> Normalized mean square error of estimated sources:')

SMSE = sum(sum(abs((S_true - S_new).^2)))/(K*T)

% Cross-correlation coefficinet calculation 
R= corrcoef(S_true,S_new)                           % Correlation matrix
r=R(2,1)                                            % Correlationcoefficient

% N= xcorr(S_true,S_new)                           % Correlation matrix
% n=R(2,1)                                         % Correlationcoefficient

disp(['SMSE = ', num2str(100*SMSE), '% = ', num2str(10*log10(SMSE)), ' dB']);

disp(' '); 
disp('========================================================================')
disp(' '); 


%%
% % Step 1: Filtering the raw signal (Four Channels)
 fs=1000;                                            % Sampling Frequency
 t1 = 1/fs;                                          % Sampling period       
 L=120550;                                           % Number of the level of the signal
 t = (0:L-1)*t1;                                     % Time vector
 fc=10;                                              % Carrier Frequency
 fc_n = fc .* 2 /fs;                                 % normalized frequency
 B = fir1(1000,fc_n);                                % FIR filter order
 I3=filter(B,1,I1);                                  % filter I1 signal
 Q3=filter(B,1,Q1);                                  % filter Q1 signal
 I4=filter(B,1,I2);                                  % filtering I2 signal
 Q4=filter(B,1,Q2);                                  % filtering Q2 Signal

%%
% %% % %% Linear demodulation of the signal (Principal Component Analysis)
 figure;                                       % new figure drwaing                             
 x_lin = pca_lin (I3,Q3);                      % Principal Component Analysis
 Fs = 1000;                                    % Sampling frequency                    
 T = 1/Fs;                                     % Sampling period       
 L = 120550;                                   % Length of signal
 t = (0:L-1)*T;                                % Time vector
 subplot(3,2,1)                                % subplot for second plot
 plot(t,x_lin);                                % plotting the linear demodulated signal
 x_lin2 = pca_lin (I4,Q4);                     % Principal Component Analysis
 subplot(3,2,2)                                % new subplot options
 plot(t,x_lin2);                               % new plot for another graph

%% Combined mixture with random noise with the linear demodulated signal
k1=x_lin+randn(1,1)+j*randn(1, 1);
k2=x_lin2+randn(1,1)+j*randn(1,1);
subplot(3,2,3)
plot(t,k1);
subplot(3,2,4)
plot(t,k2);


%% %% Separated sources from individual Signal
subplot(3,2,5)
plot(t, real(S_true(1,:)'),'linewidth',1.5);
hold on
plot(t,real(S_new(1,:)'),'linewidth',1.5); 
legend('Chest Belt','Separated Source')

subplot(3,2,6)
plot(t,real(S_true(2,:)'),'linewidth',1.5);
hold on
plot (t,real(S_new(2,:)'),'linewidth',1.5)
legend('Chest Belt','Separated Source')

