XB1 = squeeze(out.BUOY_POS.signals(1).values(1,:,:));
YB1 = squeeze(out.BUOY_POS.signals(1).values(2,:,:));
XB2 = squeeze(out.BUOY_POS.signals(1).values(3,:,:));
YB2 = squeeze(out.BUOY_POS.signals(1).values(4,:,:));
X = squeeze(out.ETA.signals(1).values(:,1,:));
Y = squeeze(out.ETA.signals(1).values(:,2,:));

figure
plot(squeeze(out.BUOY_POS.signals(1).values(1,:,:)), squeeze(out.BUOY_POS.signals(1).values(2,:,:)), 'LineWidth', 2)
hold on
plot(squeeze(out.BUOY_POS.signals(1).values(3,:,:)), squeeze(out.BUOY_POS.signals(1).values(4,:,:)), 'LineWidth', 2)
plot(squeeze(out.ETA.signals(1).values(:,1,:)), squeeze(out.ETA.signals(1).values(:,2,:)), 'LineWidth', 2)
legend('Buoy 1', 'Buoy 2', 'AUV','Location', 'Best')
grid on
xlabel('x, m')
ylabel('y, m')
str = {'-----Buoy 1: init position'};
text(XB1(1),YB1(1),str)
str = {'-----Buoy 2: init position'};
text(XB2(1),YB2(1),str)
str = {'-----AUV: init position'};
text(X(1),Y(1),str)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
subplot(4,1,1)
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(1).values(:,1,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(1).values(:,2,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(1).values(:,3,:)))
ylabel('Position, m')
legend('$\tilde{x}$', '$\tilde{y}$', '$\tilde{z}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,2)
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(2).values(:,1,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(2).values(:,2,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(2).values(:,3,:)))
ylabel('Orientation, rad')
legend('$\tilde{\phi}$', '$\tilde{\theta}$', '$\tilde{\psi}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,3)
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(1).values(:,1,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(1).values(:,2,:)))
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(1).values(:,3,:)))
ylabel('Linear velocity, m/s')
legend('$\tilde{u}$', '$\tilde{v}$', '$\tilde{w}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,4)
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(2).values(:,1,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(2).values(:,2,:)))
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(2).values(:,3,:)))
ylabel('Angular velocity, rad/s')
xlabel('Time, sec')
legend('$\tilde{p}$', '$\tilde{q}$', '$\tilde{r}$','Interpreter','latex','Location', 'Best')
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
subplot(4,1,1)
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(1).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(1).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(1).values(3,:,:)))
ylabel('Position, m')
legend('$\hat{x}$', '$\hat{y}$', '$\hat{z}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,2)
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(2).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(2).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(2).values(3,:,:)))
ylabel('Orientation, rad')
legend('$\hat{\phi}$', '$\hat{\theta}$', '$\hat{\psi}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,3)
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(1).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(1).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(1).values(3,:,:)))
ylabel('Linear velocity, m/s')
legend('$\hat{u}$', '$\hat{v}$', '$\hat{w}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,4)
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(2).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(2).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(2).values(3,:,:)))
ylabel('Angular velocity, rad/s')
xlabel('Time, sec')
legend('$\hat{p}$', '$\hat{q}$', '$\hat{r}$','Interpreter','latex','Location', 'Best')
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
subplot(4,1,1)
plot(out.ETA_MM.time, squeeze(out.ETA_ERR.signals(1).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_ERR.signals(1).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_ERR.signals(1).values(3,:,:)))
ylabel('Position, m')
legend('$x-\hat{x}$', '$y-\hat{y}$', '$z-\hat{z}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,2)
plot(out.ETA_MM.time, squeeze(out.ETA_ERR.signals(2).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_ERR.signals(2).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_ERR.signals(2).values(3,:,:)))
ylabel('Orientation, rad')
legend('$\phi-\hat{\phi}$', '$\theta-\hat{\theta}$', '$\psi-\hat{\psi}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,3)
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(1).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(1).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(1).values(3,:,:)))
ylabel('Linear velocity, m/s')
legend('$u-\hat{u}$', '$v-\hat{v}$', '$w-\hat{w}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,4)
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(2).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(2).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(2).values(3,:,:)))
ylabel('Angular velocity, rad/s')
xlabel('Time, sec')
legend('$p-\hat{p}$', '$q-\hat{q}$', '$r-\hat{r}$','Interpreter','latex','Location', 'Best')
grid on

MSE = @(ERR) sqrt(sum((ERR).^2))./2;
MAE = @(ERR) mean(abs(ERR));
RMSE = @(ERR)sqrt(mean((ERR).^2));

fprintf("MSE (eta1): %f %f %f\n", ...
    MSE(squeeze(out.ETA_ERR.signals(1).values(1,:,:))), ...
    MSE(squeeze(out.ETA_ERR.signals(1).values(2,:,:))), ...
    MSE(squeeze(out.ETA_ERR.signals(1).values(3,:,:))));
fprintf("MSE (eta2): %f %f %f\n", ...
    MSE(squeeze(out.ETA_ERR.signals(2).values(1,:,:))), ...
    MSE(squeeze(out.ETA_ERR.signals(2).values(2,:,:))), ...
    MSE(squeeze(out.ETA_ERR.signals(2).values(3,:,:))));
fprintf("MSE (v1): %f %f %f\n", ...
    MSE(squeeze(out.V_ERR.signals(1).values(1,:,:))), ...
    MSE(squeeze(out.V_ERR.signals(1).values(2,:,:))), ...
    MSE(squeeze(out.V_ERR.signals(1).values(3,:,:))));
fprintf("MSE (v2): %f %f %f\n\n", ...
    MSE(squeeze(out.V_ERR.signals(2).values(1,:,:))), ...
    MSE(squeeze(out.V_ERR.signals(2).values(2,:,:))), ...
    MSE(squeeze(out.V_ERR.signals(2).values(3,:,:))));

fprintf("MAE (eta1): %f %f %f\n", ...
    MAE(squeeze(out.ETA_ERR.signals(1).values(1,:,:))), ...
    MAE(squeeze(out.ETA_ERR.signals(1).values(2,:,:))), ...
    MAE(squeeze(out.ETA_ERR.signals(1).values(3,:,:))));
fprintf("MAE (eta2): %f %f %f\n", ...
    MAE(squeeze(out.ETA_ERR.signals(2).values(1,:,:))), ...
    MAE(squeeze(out.ETA_ERR.signals(2).values(2,:,:))), ...
    MAE(squeeze(out.ETA_ERR.signals(2).values(3,:,:))));
fprintf("MAE (v1): %f %f %f\n", ...
    MAE(squeeze(out.V_ERR.signals(1).values(1,:,:))), ...
    MAE(squeeze(out.V_ERR.signals(1).values(2,:,:))), ...
    MAE(squeeze(out.V_ERR.signals(1).values(3,:,:))));
fprintf("MAE (v2): %f %f %f\n\n", ...
    MAE(squeeze(out.V_ERR.signals(2).values(1,:,:))), ...
    MAE(squeeze(out.V_ERR.signals(2).values(2,:,:))), ...
    MAE(squeeze(out.V_ERR.signals(2).values(3,:,:))));

fprintf("RMSE (eta1): %f %f %f\n", ...
    RMSE(squeeze(out.ETA_ERR.signals(1).values(1,:,:))), ...
    RMSE(squeeze(out.ETA_ERR.signals(1).values(2,:,:))), ...
    RMSE(squeeze(out.ETA_ERR.signals(1).values(3,:,:))));
fprintf("RMSE (eta2): %f %f %f\n", ...
    RMSE(squeeze(out.ETA_ERR.signals(2).values(1,:,:))), ...
    RMSE(squeeze(out.ETA_ERR.signals(2).values(2,:,:))), ...
    RMSE(squeeze(out.ETA_ERR.signals(2).values(3,:,:))));
fprintf("RMSE (v1): %f %f %f\n", ...
    RMSE(squeeze(out.V_ERR.signals(1).values(1,:,:))), ...
    RMSE(squeeze(out.V_ERR.signals(1).values(2,:,:))), ...
    RMSE(squeeze(out.V_ERR.signals(1).values(3,:,:))));
fprintf("RMSE (v2): %f %f %f\n", ...
    RMSE(squeeze(out.V_ERR.signals(2).values(1,:,:))), ...
    RMSE(squeeze(out.V_ERR.signals(2).values(2,:,:))), ...
    RMSE(squeeze(out.V_ERR.signals(2).values(3,:,:))));