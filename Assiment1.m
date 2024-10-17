% Define parameters
V0 = 1;
Z0 = 1;

% Define l and beta*l ranges
l = linspace(0, 2*pi, 1000);
beta_l = linspace(0, 2*pi, 1000);

% Define the voltage distribution & current distribution  equations
I_l = abs((2*V0/Z0) * abs(sin(beta_l)));
V_l = abs(2*V0 * abs(cos(beta_l)));
% ===================================================================
% Plot current distribution
% ---------- l ----------
figure(1);
subplot(2,1,1);
plot(l, abs((2*V0/Z0) * abs(sin(l))) ,"r","Linewidth",2);
set(gca,'XDir','reverse' ,'YAxisLocation', 'right')
xlim([0 2*pi]);
title('Current Distribution along O.C.T.L for for l');
xlabel('l');
ylabel('|I(l)|');
xticks([0:pi/2:2*pi]);
xticklabels({'0', '\lambda/4', '\lambda/2', '3\lambda/4','\lambda'});
grid on;
% ---------- \beta l ----------
subplot(2,1,2);
plot(beta_l, I_l,"b","Linewidth",2);
set(gca,'XDir','reverse' ,'YAxisLocation', 'right')
xlim([0 2*pi]);
title('Current Distribution along O.C.T.L for \beta l');
xlabel('\beta l');
ylabel('|I(l)|');
xticks([0:pi/2:2*pi]);
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});
grid on;
% ===================================================================
% Plot current distribution
% ---------- l ----------
figure(2);
subplot(2,1,1);
plot(l, abs(2*V0 * abs(cos(l))) ,"r","Linewidth",2);
set(gca,'XDir','reverse' ,'YAxisLocation', 'right')
xlim([0 2*pi]);
title('Voltage Distribution along O.C.T.L for for l' );
xlabel('l');
ylabel('|V(l)|');
xticks([0:pi/2:2*pi]);
xticklabels({'0', '\lambda /4', '\lambda/2', '3\lambda/4','\lambda'});
grid on;
% ---------- \beta l ----------
subplot(2,1,2);
plot(beta_l, V_l,"b","Linewidth",2);
title('Voltage Distribution along O.C.T.L for \beta l');
set(gca,'XDir','reverse' ,'YAxisLocation', 'right')
xlim([0 2*pi]);
xlabel('\beta l');
ylabel('|V(l)|');
xticks([0:pi/2:2*pi]);
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});
grid on;
