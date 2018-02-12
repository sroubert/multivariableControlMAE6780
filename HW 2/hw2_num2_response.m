%% MAE 6780 HW 2 using Transition Matrix

tspan = linspace(0,20,1000);

x0 = [0; 0];

xResponse1 = zeros(2,1000);
xResponse1(1:2,1) = x0;

inputIntegration = [0; 0];

A = 50;
m = 20;
B = [0; 1/m];

for t = 2:length(tspan)
    
    
    phi = [cos(2*sqrt(6279)*tspan(t)/65)                5*sqrt(6279)*sin(2*sqrt(6279)*tspan(t)/65)/966;
        -2*sqrt(6279)*sin(2*sqrt(6279)*tspan(t)/65)/65      cos(2*sqrt(6279)*tspan(t)/65)];
    
    inputIntegration = inputIntegration + phi*B*((A)*sin(4*pi*tspan(t)) +A/2) * (tspan(end)-tspan(1))/1000;
    
    xResponse1(1:2,t) = phi*x0 + inputIntegration;
    
end

plot(tspan,xResponse1(1,:))
xlabel('Time (s)')
ylabel('Displacement from Eq. (ft)')
title('Bouncing Sean')