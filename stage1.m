clear all
% STAGE 1
a = 0.20;
b = 0.32;
alpha = 25*pi/180; %converting it to radians
ks = 5500;
bd = 3300;
mv = 1600;
mu = 50;
kT = 270*10^3;
ms = 0.25*mv; % mass of the seat is 1/4 times the mass of the vehicle
keq = (((a/b)*cos(alpha))^2) * ks;
beq = (((a/b)*cos(alpha))^2) * bd;

sys = tf([1],[ms beq keq]); % transfer function for stage 1

figure; % display bode plot for the given transfer funciton
bode(sys)
figure; % display step plot of the given transfer function
step(sys)

wn = (keq/ms)^0.5; % undamped natural frequency
df = (wn*beq)/(2*keq); % damping factor


% STAGE 3
% rectangle wave
startt = 0.5;
endt = 1.5;

% for half sine wave
ampl = 0.07;
wavelength = 6;

% plotting output
databack = sim("finalvers");
figure;
hold on;
plot(databack.xRout);
plot(databack.xuout);
plot(databack.xsout);
hold off;