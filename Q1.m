function plot_xt(n, t, g, amp, titlem)
    u = double(heaviside(g));         
    x = amp *(u .* exp(-0.5*g));         
    
    subplot(4,2,n);
    plot(t, x, 'LineWidth', 2);
    grid on;
    xlabel('t');
    ylabel('x(t)');
    title(titlem);
end


t = -5:0.001:10;

plot_xt(1, t, t, 1,      'x(t)');
plot_xt(2, t, t-2, 1,    'x(t-2)');
plot_xt(3, t, t+1, 1,     'x(t+1)');
plot_xt(4, t, 2*t, 1,    'x(2t)');
plot_xt(5, t, 0.5*t, 1,  'x(0.5t)');
plot_xt(6, t, -t, 1,    'x(-t)');
plot_xt(7, t, t, 2,    '2x(t)');
plot_xt(8, t, t, -1,    '-x(t)');
