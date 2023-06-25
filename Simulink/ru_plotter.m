figure
plot(squeeze(out.BUOY_POS.signals(1).values(1,:,:)), squeeze(out.BUOY_POS.signals(1).values(2,:,:)), 'LineWidth', 2)
hold on
plot(squeeze(out.BUOY_POS.signals(1).values(3,:,:)), squeeze(out.BUOY_POS.signals(1).values(4,:,:)), 'LineWidth', 2)
plot(squeeze(out.ETA.signals(1).values(:,1,:)), squeeze(out.ETA.signals(1).values(:,2,:)), 'LineWidth', 2)
legend('Буй 1', 'Буй 2', 'AUV','Location', 'Best')
grid on
xlabel('x, m')
ylabel('y, m')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
subplot(4,1,1)
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(1).values(:,1,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(1).values(:,2,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(1).values(:,3,:)))
ylabel('Положение, м')
legend('$\tilde{x}$', '$\tilde{y}$', '$\tilde{z}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,2)
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(2).values(:,1,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(2).values(:,2,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_MM.signals(2).values(:,3,:)))
ylabel('Ориентация, рад')
legend('$\tilde{\phi}$', '$\tilde{\theta}$', '$\tilde{\psi}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,3)
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(1).values(:,1,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(1).values(:,2,:)))
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(1).values(:,3,:)))
ylabel('Линейная скорость, м/с')
legend('$\tilde{u}$', '$\tilde{v}$', '$\tilde{w}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,4)
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(2).values(:,1,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(2).values(:,2,:)))
plot(out.ETA_MM.time, squeeze(out.V_MM.signals(2).values(:,3,:)))
ylabel('Угловая скорость, рад/с')
xlabel('Время, сек')
legend('$\tilde{p}$', '$\tilde{q}$', '$\tilde{r}$','Interpreter','latex','Location', 'Best')
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
subplot(4,1,1)
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(1).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(1).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(1).values(3,:,:)))
ylabel('Положение, м')
legend('$\hat{x}$', '$\hat{y}$', '$\hat{z}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,2)
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(2).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(2).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_HAT.signals(2).values(3,:,:)))
ylabel('Ориентация, рад')
legend('$\hat{\phi}$', '$\hat{\theta}$', '$\hat{\psi}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,3)
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(1).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(1).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(1).values(3,:,:)))
ylabel('Линейная скорость, м/с')
legend('$\hat{u}$', '$\hat{v}$', '$\hat{w}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,4)
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(2).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(2).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.V_HAT.signals(2).values(3,:,:)))
ylabel('Угловая скорость, рад/с')
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
ylabel('Положение, м')
legend('$x-\hat{x}$', '$y-\hat{y}$', '$z-\hat{z}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,2)
plot(out.ETA_MM.time, squeeze(out.ETA_ERR.signals(2).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.ETA_ERR.signals(2).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.ETA_ERR.signals(2).values(3,:,:)))
ylabel('Ориентация, рад')
legend('$\phi-\hat{\phi}$', '$\theta-\hat{\theta}$', '$\psi-\hat{\psi}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,3)
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(1).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(1).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(1).values(3,:,:)))
ylabel('Линейная скорость, м/с')
legend('$u-\hat{u}$', '$v-\hat{v}$', '$w-\hat{w}$','Interpreter','latex','Location', 'Best')
grid on

subplot(4,1,4)
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(2).values(1,:,:)))
hold on
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(2).values(2,:,:)))
plot(out.ETA_MM.time, squeeze(out.V_ERR.signals(2).values(3,:,:)))
ylabel('Угловая скорость, рад/с')
xlabel('Время, сек')
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