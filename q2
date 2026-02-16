function plot_yt(n, t, titlem, func_yt)
           
    subplot(4,2,n);
    plot(t, func_yt, 'LineWidth', 2);
    grid on;
    xlabel('t');
    ylabel('y(t)');
    title(titlem);
end

function func_yt = calc_yt(func_x)

    func_yt = 2*func_x;
end



t = 0:0.001:10;

func_x1 = sin(((2*pi)/10) * t);
func_x2 = cos(((2*pi)/10) * t);
func_x3 = func_x1 + func_x2;

func_y1 = calc_yt(func_x1);
func_y2 = calc_yt(func_x2);
func_y3 = calc_yt(func_x3);
func_y4 = func_y1 + func_y2;


plot_yt(1, t, 'y1(t)', func_y1);
plot_yt(2, t, 'y2(t)', func_y2);
plot_yt(3, t, 'y3(t)', func_y3);
plot_yt(4, t, 'y4(t)', func_y4);



%Checking for Tolerance 10^(-3)

tolerance = 1e-3;
error = max(abs(func_y3 - func_y4));


if error < tolerance
    disp("Passed Linearity test -> y3(t) ≈ y4(t) within tolerance")
else
    disp("FAILED Linearity test -> y3(t) !≈ y4(t) within tolerance")
end



