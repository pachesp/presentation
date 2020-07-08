clc; clear; close all;

unidirectioanlArr_g0=csvread('uni_data_g0.csv');
unidirectioanlArr_g=csvread('uni_data_g.csv');

h_uni_g0 = unidirectioanlArr_g0(:, 1);
h_uni_g = unidirectioanlArr_g(:, 1);

x = unidirectioanlArr_g0(:, 7);


figure
plot(x, h_uni_g0, x, h_uni_g)
xline(1000, '--', 'LineWidth', 1.8)
rectangle('Position',[800 8.2 240 1.3],'EdgeColor','r', 'LineWidth', 1.8)
axis([650, 1150, 8, 10.25])
grid on
title('Unidirectional 2D-2D, t=20')
xlabel('x')
ylabel('height')
legend('Gradient = 0', 'Gradient \neq 0', 'domain division');
saveas(gcf,'unidirectional_graph.png')

bidirectionalArr_g_0=csvread('bi_data_g0.csv');
bidirectionalArr_g_bueno=csvread('bi_data_g.csv');

h_bidi_g_0 = bidirectionalArr_g_0(:, 1);
h_bidi_g_bueno = bidirectionalArr_g_bueno(:, 1);


figure
plot(x, h_bidi_g_0, x, h_bidi_g_bueno)
xline(1000, '--', 'LineWidth', 1.8)
rectangle('Position',[790 8.2 410 2.6],'EdgeColor','r', 'LineWidth', 1.8)
axis([700, 1250, 8, 11.25])
grid on
title('Bidirectional 2D-2D, t=20')
xlabel('x')
ylabel('height')
legend('Gradient = 0', 'Gradient \neq 0', 'domain division');
saveas(gcf,'bidirectional_graph.png')



