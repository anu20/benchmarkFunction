x1=-5;
x2=5;
x3=-5;
x4=5;
R=1500;
x=x1:(x2-x1)/R:x2;
y=x3:(x4-x3)/R:x4;

for j=1:length(x)
    
    for i=1:length(y)
       f(i)=x(i)^4-4*x(i)+4*x(i)+y(i)*y(i);
    end
    f_tot(j,:)=f;
end

figure(1)
mesh(x,y,f_tot);
xlabel('x');
ylabel('y');
zlabel('f(x)');