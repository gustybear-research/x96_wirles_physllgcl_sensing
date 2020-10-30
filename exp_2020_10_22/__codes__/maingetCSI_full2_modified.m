clc
clear
close all

%% **** Load Data

fileB = 'BER_CSI_B_20_10_15_15_22.csv';
% fileB = './BER_CSI_B_20_10_15_15_27.csv';
% fileB = './Samson_60sec_3cycle/BER_CSI_B_20_10_15_15_46.csv';
% fileB = './Samson_60sec_5cycle/BER_CSI_B_20_10_15_15_59.csv';
% fileB = './Samson_60sec_3cycle_Tape/BER_CSI_B_20_10_15_16_22.csv';
% fileB = './Samson_60sec_5cycle_Tape/BER_CSI_B_20_10_15_16_44.csv';
% fileB = './Thomas_60sec_5cycle/BER_CSI_B_20_10_15_16_56.csv';
% fileB = './Thomas_60sec_3cycle/BER_CSI_B_20_10_15_17_00.csv';

B = readtable(fileB);

%% Get RSS, Time, BER, Magnitude, and Phase Data
[Brss, Bt, Bber, Bmag, Bpha] = getInfo2(B);

% convert Bt to relative time
Bt = Bt(:,1) - Bt(1,1); 


%% Get CSI for Data Set c
c = 1;
Bcsi = Bmag .* exp(1i.*Bpha);


for ii = 1:32
    if ii == 32
        Bcsi(:,ii) = 1 ./ Bcsi(:,ii);
    else
        Bcsi(:,ii) = 1 ./ ((Bcsi(:,ii+1)-Bcsi(:,ii))/5 * c + Bcsi(:,ii));
    end
end

%% Initialize Trial Name and Channel Names
% name_str = strrep(fileparts(fileB), './',''); % use dir name as title
name_str = strrep(fileB,'.csv','');
labelArr = strings(32,1);

%% Plot BER and RSS on Same Figure

% % Plot BER
% figure
% subplot(2,1,1)
% plot(Bt, Bber, 'k','LineWidth',1)
% title('BER')
% ylabel('BER')
% xlabel('Time (s)')
% set(gca,'FontSize',12,'Color',[245, 245, 245]/255)
% grid on
% 
% % Plot RSS 
% subplot(2,1,2)
% plot(Bt, Brss, 'k','LineWidth',1)
% title( 'RSS')
% ylabel('RSS')
% xlabel('Time (s)')
% set(gca,'FontSize',12,'Color',[245, 245, 245]/255)
% grid on
% 
% fig = get(groot,'CurrentFigure');
% fig.PaperPositionMode = 'auto';
% fig.Color = [245, 245, 245]/255;

%% Plot Phase of CSI for Channels 0 to 31

figure
for ii=1:32
    subplot(8,4,ii);
    labelArr(ii) = "ch"+(ii-1);
    plot(Bt, unwrap(angle(Bcsi(:,ii))), 'k','LineWidth',1);
    title(labelArr{ii});
    hold on
    grid on
    set(gca,'FontSize',12,'Color',[245, 245, 245]/255);
    
%     set(gca, 'Xtick', 0:3:30)
    set(gca, 'Xtick', 0:3:60)
%     set(gca, 'Xtick', 0:5:60)
    
end

sgtitle(['Phase of CSI vs. Time (s) for Trial: ', name_str], 'Interpreter', 'None')
fig = get(groot,'CurrentFigure');
fig.PaperPositionMode = 'auto';
fig.Color = [245, 245, 245]/255;
fig.Position = get(0, 'Screensize');
saveas(fig, ['./images/' name_str],'png');

%% Plot Magnitude of CSI for channels 0 to 31

% figure
% for ii=1:32 
%     subplot(8,4,ii);
%     labelArr(ii) = "ch"+(ii-1);
%     plot(Bt, abs(Bcsi(:,ii)), 'k','LineWidth',1);
%     title(labelArr{ii});
%     hold on
%     grid on
%     set(gca,'FontSize',12,'Color',[245, 245, 245]/255);
%     
% %     set(gca, 'Xtick', 0:3:30)
%     set(gca, 'Xtick', 0:3:60)
% %     set(gca, 'Xtick', 0:5:60)
% 
% end
% 
% sgtitle(['Magnitude of CSI vs. Time (s) for Trial: ', name_str], 'Interpreter', 'None')
% fig = get(groot,'CurrentFigure');
% fig.PaperPositionMode = 'auto';
% fig.Color = [245, 245, 245]/255;