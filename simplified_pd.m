% Partial Discharge (PD) Modeling
% Input parameters
t_step=10^-6;
cycle=3600;
t=0:t_step:0.016*cycle;
n_step=(length(t)-1)/cycle;

Vm=15;
Vi=10;

Va=zeros(1,length(t));
Vc=Va;
n=0;

q=zeros(1,length(t));
p=1;

% Initial value of the voltage across the void
for i=2:length(t)
    Va(i)=Vm*sin(62.5*2*pi*t(i));              % Waveform of applied voltage
    Vc(i)=Vc(i-1)+(Va(i)-Va(i-1));
    if Vc(i)>=Vi && p>rand              % Stochastic behavior
        q(i)=Vc(i);                           % Apparent charge definition
        Vc(i)=0;
        n=n+1;
    else if Vc(i)<=-Vi && p>rand          % Stochastic behavior
            q(i)=Vc(i);                       % Apparent charge definition
            Vc(i)=0;
            n=n+1;
        end
    end
end

