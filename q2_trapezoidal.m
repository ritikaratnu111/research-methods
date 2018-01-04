h=0.1;
N=(5/h)+1;
w=zeros(1,N);
w(1)=0.1;

for i=2:N
   w(i)=w(i-1)*(1-0.5*5*h)/(1+0.5*5*h); 
end
x1=0:h:5;
x=0:(1/100):5;
y=0.1*exp(-5*x);

% Plotting the figure
plot(x,y,'b',x1,w,'r')
title('trapezoidal')
legend('exact','trapezoidal')
