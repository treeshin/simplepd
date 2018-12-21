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
        y(j)=abs(q(i));
        j=j+1;
    end
end

for i=1:1
    hold on
    plot(t(1:32000),Va(1:32000),'r',t(1:32000),Vc(1+32000*(i-1):32000*i),'b')
    time=t(1:32000)';
    applied_voltage=Va(1:32000)';
    void_voltage=Vc(1+32000*(i-1):32000*i)';
    grid on
end
inception_voltage=ones(length(time),1)*10;
