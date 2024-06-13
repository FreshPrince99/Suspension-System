t = 0:0.1:10;
y= sin(t);
figure;
hold on;
for k = 1:4
    subplot(2,2,k);
    plot(t, sin(k.*t));
end
