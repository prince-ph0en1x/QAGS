
% figure(1)
% hold on
% for o = 10:10
% 	N = 2^o;
% 	t = 1:3*N/4;
% % 	y = 2.*t.*sqrt(t).*sqrt(N-t)/N;
% 	y = 1./(2.*sqrt(t/N).*sqrt(1-t/N));
% 	plot(t,y)
% end

% N = 2^10;
% t = 1:N;
% y = 1./(2.*sqrt(t/N).*sqrt(1-t/N));
% % plot(t,y)
% 
% theta = asin(t/N);
% % m = 1;
% % p = 0.5 - sin(4*m*theta)./(4*m*sin(2*theta));
% figure(2)
% hold on
% p = zeros(1,size(t,2));
% lbd = 1;
% for mincpwr = 0:1:sqrt(N)/lbd
% 	minc = (lbd)^mincpwr;
% 	m = 1*minc;
% 	p1 = 0.5 - sin(4*m*theta)./(4*m*sin(2*theta));
% 	plot(t,p+(1-p).*p1)
% 	p = p+(1-p).*p1;
% end

% cs = 3*N./(2*sqrt((N-t).*t));
% plot(t,cs,'-.r')

% ylim()
% line([512 512],ylim())
% line(xlim(),[0.25 0.25])
% h2 = refline([1 0.25]);

% plot(t,p)
% hold on
% minc = (6/5)^32;
% m = m*minc;
% p1 = 0.5 - sin(4*m*theta)./(4*m*sin(2*theta));
% plot(t,p+(1-p).*p1)
% for ti = 1:N
% 	m = 1;
% 	p = 0.5 - sin(4*m(theta(ti))/(4*m*sin(2*theta(ti)));
% end

lmd = 1:0.005:4/3;
y = lmd.*(1./(2*lmd-2) + 1./(8-6*lmd));
plot(lmd,y)

