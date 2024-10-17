% ---------- l ----------
figure(1);
subplot(2,1,1);
plot(l, abs(2*V0 * abs(cos(l))) ,"r","Linewidth",2);
hold
plot(l, abs((2*V0/Z0) * abs(sin(l))) ,"b","Linewidth",2);
set(gca,'XDir','reverse' ,'YAxisLocation', 'right')
xlim([0 2*pi]);
title('Current & Voltage Distribution along O.C.T.L for for l');
xlabel('l');
ylabel('|V(l)|');
xticks([0:pi/2:2*pi]);
xticklabels({'0', '\lambda /4', '\lambda/2', '3\lambda/4','\lambda'});
grid on;
legend("Voltage"," Current ")

% ---------- \beta l ----------
subplot(2,1,2);
plot(beta_l, V_l,"r","Linewidth",2);
hold
plot(beta_l, I_l,"b","Linewidth",2);

title('Current & Voltage Distribution along O.C.T.L for \beta l');
set(gca,'XDir','reverse' ,'YAxisLocation', 'right')
xlim([0 2*pi]);
xlabel('\beta l');
ylabel('|V(l)|');
xticks([0:pi/2:2*pi]);
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});
grid on;
legend("Voltage"," Current ")
