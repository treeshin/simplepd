n=0;
for i=1:length(q)
    if q(i)~=0
        n=n+1;
    end
end
j=1;
for i=1:length(q)
    if q(i)~=0
        x(j)=i;
        y(j)=4/5*(abs(q(i))-25);
        j=j+1;
    end
end
x=(t_step)*x;
x=mod(x,0.016);
plot(x,y,'k.',0:t_step:0.016,Va(1:n_step+1),'r')
grid on
axis([0 0.016 -24 24])
xticks(0:0.0016:0.016)
yticks(-24:6:24)
xticklabels([])
yticklabels([]) 