x1=0;
x2=pi;
x3=0;
x4=pi;
R=1500;
x=x1:(x2-x1)/R:x2;
y=x3:(x4-x3)/R:x4;

for j=1:length(x)
    
    for i=1:length(y)
 
      p=cos(x(i))+cos(y(i));
      f(i)=(2-p+(1-cos(x(i))-sin(x(i))))^2+(2-p+(1-cos(y(i))-sin(y(i))))^2;
    end
    f_tot(j,:)=f;
end

figure(1)
mesh(x,y,f_tot);
xlabel('x');
ylabel('y');
zlabel('f(x)');