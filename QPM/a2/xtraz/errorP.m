%((N!/(A*((N/A)!)))+(A^N-(N!/(A*((N/A)!))))/A)/(A^N)

figure(1)
hold on
% er = zeros(1,15);

% N = 32;
% for A = 2:16
%     s = A^N;
%     f1 = factorial(N);
%     f2 = factorial(ceil(N/A));
%     t1 = f1/(f2^A);
%     er(A-1) = (t1 + (s - t1)/A)/s;
% end
% plot([2:16],er,'g')
% 
% N = 64;
% for A = 2:16
%     s = A^N;
%     f1 = factorial(N);
%     f2 = factorial(ceil(N/A));
%     t1 = f1/(f2^A);
%     er(A-1) = (t1 + (s - t1)/A)/s;
% end
% plot([2:16],er,'b')

% N = 128;
% for A = 2:16
%     s = A^N;
%     f1 = factorial(N);
%     f2 = factorial(ceil(N/A));
%     t1 = f1/(f2^A);
%     er(A-1) = (t1 + (s - t1)/A)/s;
% end
% plot([2:16],er,'-or')

lim = 7;
er2 = zeros(1,lim);
er4 = zeros(1,lim);
for s = 1:lim
    N = 2^s;
    A = 2;
    d = A^N;
    n1 = ((A-1)^(N/2))*factorial(N);
    n2 = 0;
    for i = N/2:N
        n2 = n2 + 1/(factorial(i)*factorial(N-i));
    end
    er2(s) = (n1*n2)/d;
    A = 4;
    d = A^N;
    n1 = ((A-1)^(N/2))*factorial(N);
    n2 = 0;
    for i = N/2:N
        n2 = n2 + 1/(factorial(i)*factorial(N-i));
    end
    er4(s) = (n1*n2)/d;
end

%     f2 = factorial(ceil(N/A));
%     t1 = f1/(f2^A);
%     er(A-1) = (t1 + (s - t1)/A)/s;

plot(2.^[1:lim],er2,'-or')
plot(2.^[1:lim],er4,'-ob')
xlabel('Reference String Size N')
ylabel('Error Fraction fp_A')

xlim([1 2^lim])
ylim([0 1])
% title('Error fraction for different Alphabet size')
grid on
% xlabel('Alphabet Size')
% ylabel('Error Fraction')

