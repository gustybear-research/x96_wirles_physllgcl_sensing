clc
clear
close all

% set(0,'defaulttextinterpreter', 'latex');
% set(0, 'defaultlinelinewidth',2);
% set(0, 'defaultLineMarkerSize', 15);
set(0, 'DefaultTextFontSize', 14);
set(0, 'DefaultAxesFontSize', 14);

num_mov = 5;
thres = 90;
chan = 21;
alpha = 0.5;

%% Bob
Bob = read_bf_file('../test_chan_11_ht20_1620794160.dat'); % los trail_1
% Bob = read_bf_file('test_chan_1_ht20_1620191490.dat');
% Bob = read_bf_file('test_chan_1_ht20_1620192490.dat'); % los baseline_1
% Bob = read_bf_file('test_chan_1_ht20_1620192660.dat');
% Bob = read_bf_file('test_chan_1_ht20_1620194200.dat'); % nlos trail_1 
% Bob = read_bf_file('test_chan_1_ht20_1620194380.dat');
numCSI = size(Bob,1);

ii = 1;
while ii <= numCSI
    if isempty(Bob{ii,1})
        break
    else
        temp_csi = Bob{ii,1}.csi;
        for ind_rx = 1:3
            tempCSI = squeeze(temp_csi(1,ind_rx,:));
            CSI_B0(ii,ind_rx) = tempCSI(chan);
            if ind_rx == 1
                RSS_B0(ii,ind_rx) = Bob{ii,1}.rssi_a;
            elseif ind_rx ==2 
                RSS_B0(ii,ind_rx) = Bob{ii,1}.rssi_b;
            else
                RSS_B0(ii,ind_rx) = Bob{ii,1}.rssi_c;
            end
        end
        ii = ii+1;
    end
end


% Bob = designfilt('highpassfir','StopbandFrequency',0.15, ...
%          'PassbandFrequency',0.25,'PassbandRipple',0.5, ...
%          'StopbandAttenuation',65,'DesignMethod','kaiserwin');

