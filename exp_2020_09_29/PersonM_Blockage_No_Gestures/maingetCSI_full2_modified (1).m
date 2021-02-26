clc
clear
% close all

%% **** load
% fileB = './mmWave_28GHz_TX00_RX10_115cm/BER_CSI_B_20_09_15_16_38.csv';
% fileB = './mmWave_28GHz_TX00_RX10_115cm_Blockage/BER_CSI_B_20_09_15_16_46.csv';
% fileB = './mmWave_28GHz_TX00_RX10_115cm_NoBlockage/BER_CSI_B_20_09_15_16_48.csv';
% fileB = './mmWave_28GHz_TX05_RX10_115cm/BER_CSI_B_20_09_15_16_37.csv';
% fileB = './mmWave_28GHz_TX10_RX10_115cm/BER_CSI_B_20_09_15_16_33.csv';
fileB = 'BER_CSI_B_20_09_29_15_37.csv';

name_ind = 'PersonM_Blockage_No_Gestures';

B = readtable(fileB);

%% get time, ber, magnitude, phase data
[Bt, Bber, Bmag, Bpha] = getInfo2(B);

% store timestamp
Rt = Bt;

% convert Bt to relative time
Bt = Bt(:,1) - Bt(1,1); 


%% get CSI for data set c
c = 1;
Bcsi = Bmag .* exp(1i.*Bpha);


for ii = 1:32
    if ii == 32
        Bcsi(:,ii) = 1 ./ Bcsi(:,ii);
    else
        Bcsi(:,ii) = 1 ./ ((Bcsi(:,ii+1)-Bcsi(:,ii))/5 * c + Bcsi(:,ii));
    end
end

% figure
% subplot(2,1,1);
% plot(abs(Bcsi(:,end)))
% title('mag of CSI')
% % ylim([0 1])
% subplot(2,1,2);
% plot(angle(Bcsi(:,end)))
% title('pha of CSI')

%%
% make aB to [1,361]
aB = -45:90/(length(Bber)-1):45;

%% COMPARE BER AND MAGNITUDE OF CSI

% generate channel names for legend
labelArr = strings(32,1);

% Plot BER
figure
subplot(33,1,1);
plot(Bt, Bber, 'k','LineWidth',1);
title('Comparison of BER to Magnitude of CSI on All Channels');
ylabel('BER')
set(gca,'FontSize',12,'Color',[245, 245, 245]/255)
grid on

% Plot Magnitude of CSI for channels 0 to 31
for ii=1:32    
    subplot(33,1,ii+1);
    labelArr(ii) = "ch"+(ii-1);
    plot(Bt, abs(Bcsi(:,ii)), 'k','LineWidth',1);
    hold on
    set(gca,'FontSize',12,'Color',[245, 245, 245]/255);
    legend(labelArr(ii));
end
xlabel('Time (s)')
ylabel('Magnitude of CSI')
grid on

fig = get(groot,'CurrentFigure');
fig.PaperPositionMode = 'auto';
fig.Color = [245, 245, 245]/255;

%% COMPARE BER AND PHASE OF CSI

% Plot BER
figure
subplot(33,1,1);
plot(Bt, Bber, 'k','LineWidth',1)
title('Comparison of BER to Phase of CSI on All Channels')
ylabel('BER')
set(gca,'FontSize',12,'Color',[245, 245, 245]/255)
grid on

% Plot Phase of CSI for channels 0 to 31
for ii=1:32    
    subplot(33,1,ii+1);
    labelArr(ii) = "ch"+(ii-1);
    plot(Bt, unwrap(angle(Bcsi(:,ii))), 'k','LineWidth',1);
    hold on
    set(gca,'FontSize',12,'Color',[245, 245, 245]/255);
    legend(labelArr(ii));
end
xlabel('Time (s)')
ylabel('Phase of CSI')
grid on

fig = get(groot,'CurrentFigure');
fig.PaperPositionMode = 'auto';
fig.Color = [245, 245, 245]/255;

%% **** save
% dataname = ['./extractedData/data' name_ind '.mat'];
% save(dataname,'Bcsi','aB')
% disp('********** saved **********')