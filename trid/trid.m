x1=-36;
x2=36;
x3=-36;
x4=36;
R=1500;
x=x1:(x2-x1)/R:x2;
y=x3:(x4-x3)/R:x4;

for j=1:length(x)
    
    for i=1:length(y)
 
      p=(x(i)-1)^2+(y(i)-1)^2;
      f(i)=p-(x(i)*x(i)-1+y(i)*y(i)-1);
    end
    f_tot(j,:)=f;
end

figure(1)
mesh(x,y,f_tot);
xlabel('x');
ylabel('y');
zlabel('f(x)');