clc;

clf;

b = [1 0 1 0 1 1];

% find the length of the binary data 'b'

n = length(b);

% find the length of the binary data 'b'

n = length(b);

% 1. Unipolar NRZ

% In this coding Output data is same as input data

% define the x raw vector for the X -axis or time axis

x = [];

% define the y raw vector for the y -axis

y = [];

% create a for loop from 1 to length of 'b' data

for i=1:n



    % create x raw vector which define the output at t = 0 to 1, 1 to 2 ...

    x=[x i-1 i];

    if(b(i)==0)     % if the data is 0 then output is 0

        y=[y 0 0]; % then output is 0 for respective x vector

    else

        y=[y 1 1];   % elese 1 fro respective x vector

    end

end

% plot x vs y

plot(x,y)

axis([0,n,-1.1,+1.1]); % Range of axis X= 0 to n and y = -1.1 to 1.1

title('Unipolar NRZ'); % give the title to plot and label x axis

xlabel('n')

grid on

figure

% 2. Polar NRZ

br = 1; % rit rate
T = length(b)/br; % full time of bit sequence
n = 200;
N = n*length(b);
dt = T/N;
t = 0:dt:T;
x = zeros(1,length(t)); % output signal

for i = 0:length(b)-1
if b(i+1) == 1
x(i*n+1:(i+1)*n) = 1;
else
x(i*n+1:(i+1)*n) = -1;
end
end
plot(t,x);
axis([0 t(end) -1.1 1.1])
grid on;
xlabel('n')
title('polar NRZ');
figure



% 3. Unipolar RZ

% Output changes from + to 0 for each alternative 1's but for half the

% duration that means for t = n+0.5T , output = 1 and from t = n + T,

% Output = 0

x = [];

y = [];

for i=1:n

    x=[x i-1 i-0.5 i-0.5 i]; % define two duration for i=1 : 0 to 0.5 and 0.5 to 1

    if(b(i)==0)

        y=[y 0 0 0 0];

    else

        y=[y 1 1 0 0];

    end

end

% plot x vs y

plot(x,y)

axis([0,n,-1.1,+1.1]); % Range of axis X= 0 to n and y = -1.1 to 1.1

title('Unipolar RZ'); % give the title to plot

xlabel('n')

grid on

figure

% 4. Bipolar RZ

% Output changes from + to 0 and 0 to - for each alternative 1's but for half the

% duration that means for t = n+0.5T , output = 1 and from t = n + T,

% Output = -1

x = [];

y = [];

A=1;

for i=1:n

    x=[x i-1 i-0.5 i-0.5 i ];

    if(b(i)== 1)

        y=[y A A 0 0];

        A=A*(-1);

    else

        y=[y 0 0 0 0];

    end

end

% plot x vs y

plot(x,y)

axis([0,n,-1.1,+1.1]); % Range of axis X= 0 to n and y = -1.1 to 1.1

title('Bipolar RZ'); % give the title to plot

xlabel('n')

grid on

figure

% 5. Manchester

% Output will be from 0 to + if data is 0 and from + to 0 if data is 1

x = [];

y = [];

A = 1;

for i=1:n

    x=[x i-1 i-1+0.5 i-1+0.5 i];

    if(b(i)==0)

        y=[y 0 0 A A];

    else

        y=[y A A 0 0];

    end



end

% plot x vs y

plot(x,y)

axis([0,n,-1.1,+1.1]); % Range of axis X= 0 to n and y = -1.1 to 1.1

title('Manchester'); % give the title to plot

xlabel('n')

grid on

Output :
