z=importdata('R2D7.txt');                                    % import data set 
x1=z.data(:,2);
x2=x1(1:12000,:); 
x3=z.data(:,4);
x4=x3(1:12000,:); 
Y=pca_lin(x2,x4); 
fs=1000;                                            
t1 = 1/fs;                                                 
L=12000;                                           
t = (0:L-1)*t1;  
subplot(2,1,1)
plot(t,Y);
% hold on
% plot(t,x4); 
grid on

Nsamps = length(Y);                    
f = 1000*(0:Nsamps/2-1)/Nsamps;           

I_fft = abs(fft(Y));                 
I_fft = I_fft(1:Nsamps/2);              

% Q_fft = abs(fft(x4));               
% Q_fft = Q_fft(1:Nsamps/2);             
subplot(2,1,2)
plot(f,I_fft);
xlim([0 50]);
grid on
% hold on
% plot(f,Q_fft);
% xlim([0 50]); 
