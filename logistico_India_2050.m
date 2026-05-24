clc;
clear;
close all;

% Datos inicales
P0 = 1450935791;       % Población en 2024
K = 1.95e9;      % Capacidad de carga
r = 0.0371;    % Tasa de crecimiento

% Años
anios = 2024:2050;
t = anios - 2024;       % Tiempo desde 2024

% Fórmula Logística
P = K ./ (1 + ((K - P0)./P0).*exp(-r.*t));

% Imprimir resultados
fprintf('Año    Población\n');
for i=1:length(anios)
    fprintf('%d    %.0f\n', anios(i), P(i));
end

% Resultado 2050
fprintf(' \nPoblación en 2050: %.0f habitantes\n', P(end));
fprintf(' Equivale a %.3f mil millones\n', P(end)/1e9);

% Gráfica
figure;
plot(anios, P/1e9, '-o', 'LineWidth', 1.5);
grid on;
xlabel('Año');
ylabel('Población (miles de millones)');
title('Proyección de Población con modelo Logístico (2024-2050)');


