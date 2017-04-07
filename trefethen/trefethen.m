x1=-10;
x2=10;
x3=-10;
x4=10;
R=1500;
x=x1:(x2-x1)/R:x2;
y=x3:(x4-x3)/R:x4;

for j=1:length(x)
    
    for i=1:length(y)
    
      f(i)=exp(sin(50*x(i)))+sin(60*exp(y(i)))+sin(70*sin(x(i)))+sin(sin(80*y(i)))-sin(10*(x(i)+y(i)))+(x(i)*x(i)+y(i)*y(i))*(1/4);
    end
    f_tot(j,:)=f;
end

figure(1)
mesh(x,y,f_tot);
xlabel('x')
ylabel('y')
zlabel('f(x)')

