z=importdata('R2D7.txt');                                    % import data set 
x1=z.data(:,2);
x2=x1(1:12000,:); 
x3=z.data(:,4);
x4=x3(1:12000,:); 
fs=1000;                                            
t1 = 1/fs;                                                 
L=12000;                                           
t = (0:L-1)*t1;  
subplot(2,1,1)
plot(t,x2);
hold on
plot(t,x4); 
grid on

Nsamps = length(x2);                    
f = 1000*(0:Nsamps/2-1)/Nsamps;           

I_fft = abs(fft(x2));                 
I_fft = I_fft(1:Nsamps/2);              

Q_fft = abs(fft(x4));               
Q_fft = Q_fft(1:Nsamps/2);             
subplot(2,1,2)
plot(f,I_fft);
xlim([0 50]);
hold on
plot(f,Q_fft);
xlim([0 50]); 

% phase plot for I Signal
figure;
I_fft1=fft(x2); 
I_fft2=I_fft1(1:Nsamps/2);
Ifft_3=angle(I_fft2)*180/pi;
plot(f,Ifft_3);
xlim([0 20])
xlabel('Frequency (Hz)');
ylabel('Phase (theta)');

% phase plot for Q Signal
figure; 
Q_fft1=fft(x4); 
Q_fft2=Q_fft1(1:Nsamps/2);
Qfft_3=angle(Q_fft2)*180/pi;
plot(f,Qfft_3);
xlim([0 20])
xlabel('Frequency (Hz)');
ylabel('Phase (theta)');