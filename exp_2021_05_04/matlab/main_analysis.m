close all

%% raw data
rate = 500;
time = 1.5*60; % * minutes

figure
plot(mag2db(abs(CSI_B0(1:rate*time,1))))
% plot(mag2db(abs(CSI_B0(1:2500,1))))
hold on
plot(mag2db(abs(CSI_B0(1:rate*time,2))))
hold on
plot(mag2db(abs(CSI_B0(1:rate*time,3))))
title('Raw data')
xlabel('Packet index')
ylabel('CSI amplitude (dB)')

figure
plot(angle(CSI_B0(1:2500,1)) - mean(angle(CSI_B0(1:2500,1))))
hold on
plot(angle(CSI_B0(1:2500,2)) - mean(angle(CSI_B0(1:2500,2))))
% hold on
% plot(angle(CSI_B0(1:rate*time,3)))
title('Raw data')
xlabel('Packet index')
ylabel('CSI phase')

% %% FFT
% temp1 = abs(CSI_B0(1:rate*time,1));
% % figure
% % plot(temp1)
% 
% temp = fftshift(fft(temp1));
% %temp = fft(temp1);
% f = -rate/2:1/time:rate/2-1/time;           % hertz
% 
% %Plot the spectrum:
% figure;
% plot(f, abs(temp));
% % plot(f,abs(temp)/rate);
% xlabel('Frequency (in hertz)');
% title('FFT: ant1')

temp = fftshift(fft(angle(CSI_B0(1:rate*time,1))));
f = -rate/2:1/time:rate/2-1/time;           % hertz

%Plot the spectrum:
figure;
plot(f,abs(temp));
xlabel('Frequency (in hertz)');
title('FFT: ant2')

figure
plot(fft(angle(CSI_B0(1:rate*time,1))))
hold on
plot(fft(angle(CSI_B0(1:rate*time,2))))

%% sampling window & remove static
x1_B = CSI_B0(1:rate*time,1);
x2_B = CSI_B0(1:rate*time,2);

x1_B = reshape(x1_B, rate, time);
alpha_B = min(abs(x1_B));
alpha_B = alpha_B.';
beta_B = 1000*alpha;

x2_B = reshape(x2_B, rate, time);

x1_B = x1_B.';
x2_B = x2_B.';

x1_B = x1_B - alpha_B;
x2_B = x2_B + beta_B;

CSI_B = x1_B .* conj(x2_B);

CSI_B = CSI_B.';
CSI_B = CSI_B - mean(CSI_B);
CSI_B = reshape(CSI_B,1,numel(CSI_B));

figure
plot(mag2db(abs(CSI_B)))
xlim([0 length(CSI_B)])
title('Static components removed')
xlabel('Packet index')
ylabel('CSI amplitude (dB)')

figure
plot(angle(CSI_B))
xlim([0 length(CSI_B)])
title('Static components removed')
xlabel('Packet index')
ylabel('CSI phase')