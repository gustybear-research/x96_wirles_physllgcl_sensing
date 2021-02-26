%% Clear workspace
clearvars; close all;

%% Options
i_ref = 3; % ["MufRef","NoRef","Ref"]
i_freq = 2; % ["0.00Hz","0.20Hz","0.30Hz"]
i_bkg = 2; % ["Far","Close"]
sel_subcarriers = 0:31; % 0:31 for all subcarriers
startTime = 0; % 0 for beginning
endTime = 20; % inf for end
plot_subcarriers = false;

%% Load data
cd ..
exp = "\exp_2021_02_19\";
reflector = ["MufRef","NoRef","Ref"];
freq = ["0.00Hz","0.20Hz","0.30Hz"];
background = ["Far","Close"];

% load the experiment data
filename = strcat(reflector(i_ref),'_',freq(i_freq),'_',background(i_bkg),'.csv');
file_title = strcat(reflector(i_ref),'-',freq(i_freq),'-',background(i_bkg));
path = strcat(pwd, exp, filename);
data = readtable(path,'VariableNamingRule','preserve');
cd ICA_analysis

%% Compile data
numSamples = size(data, 1);
T = mean(diff(data.Time));
sampleRate = 1/T;
signals = zeros(numSamples, length(sel_subcarriers));
% make sure the desired timeframe actually exists in the data
startTime = max(startTime, data.Time(1));
endTime = min(endTime, data.Time(end));
i_signal = 1;
for i=sel_subcarriers
    % which columns will contain mag and phase data
    mag = 2*i+3;
    phase = 2*i+4;
    % convert mag and phase to cartesian
    [a, b] = pol2cart(data{:,mag}, data{:,phase});
    % store the signals as complex arrays
    signals(:,i_signal) = complex(a, b);
    % advance to the next storage location
    i_signal = i_signal+1;
end
%% Plot selected subcarriers
if plot_subcarriers
    figure(); %#ok<UNRCH>
    subc_plot = tiledlayout('flow','TileSpacing','none','Padding','none');
    for i=1:size(signals,2)
        nexttile;
        hold on;
        plot(data.Time, abs(signals(:,i)));
        title(sprintf('Channel %.0f', sel_subcarriers(i)));
        xlim([startTime endTime]);
    end
end
%% Compute ICA
addpath('pca_ica');
% Zica = abs(kICA(signals', 1));
Zica = jader2013(abs(signals),2)';
first_ind = Zica(:,1);
second_ind = Zica(:,2);

%% Plot ICA results
figure();
hold on;
plot(data.Time, abs(Zica));
xlim([startTime endTime]);
legend('Independent Source 1', 'Independent Source 2');
% plot(data.Time, second_ind1);

%% Compute FFT from ICA
Y = fft(normalize(Zica)); % compute FFT of normalized magnitude
f = sampleRate*(0:numSamples-1)/numSamples; % compute frequency axis
P = abs(Y).^2; % Magnitude squared

%% Plot FFT results
figure();
plot(f, abs(P));
xlim([0 sampleRate/2]);
legend('Independent Source 1', 'Independent Source 2');
title(strcat(file_title, ' FFT after ICA seeking 2 independent sources'));
xlabel('f (Hz)');

