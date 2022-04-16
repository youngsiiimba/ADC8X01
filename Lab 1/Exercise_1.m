h = [1 zeros(1,20) 0.5 zeros(1,10)];
subplot(3, 1, 1);
stem(h);
xlabel("Time(n)");
ylabel("Amplitude");
title("Impulse response signal");
axis([0 100 0 1]);

x = [0 1:10 5.*ones(1,5) zeros(1,40)];
subplot(3, 1, 2);
stem(x);
xlabel("Time(n)");
ylabel("Amplitude");
title("Input signal");
axis([0 100 0 10]);

y = conv(x,h);
subplot(3, 1, 3);
stem(y);
xlabel("Time(n)");
ylabel("Amplitude");
title("Output signal");

