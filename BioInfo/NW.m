close all
clear all
clc

s1 = 'aactgtgcacta';
s2 = 'aacctggcactt';
l = size(s1,2);
sm = zeros(l+2,l+2);
ci = zeros(l+1,l+1);
cij = zeros(l+1,l+1);
cj = zeros(l+1,l+1);

for i = 2:l+1
	sm(i,1) = sm(i-1,1)-1;
	sm(1,i) = sm(1,i-1)-1;
end
for i = 2:l+1
	for j = 2:l+1
		sm(i,j) = max([sm(i-1,j-1) sm(i-1,j) sm(i,j-1)]);
		if (sm(i,j) == sm(i-1,j-1) || (i>2 && j>2  && s1(j-1) == s2(i-1)))%&& s1(j-2) == s2(i-2)
			cij(i,j) = 1;
		end
		if (sm(i,j) == sm(i-1,j))
			ci(i,j) = 1;
		end
		if (sm(i,j) == sm(i,j-1))
			cj(i,j) = 1;
		end
		
		if (s1(j-1) == s2(i-1))
			sm(i,j) = sm(i,j)+1;
		else
			sm(i,j) = sm(i,j)-1;
		end
	end
end
sm
pcolor(sm);
% shading interp
colorbar
colormap(jet)
ax = gca;
x1 = ['0' cellstr(s1')'];
x2 = ['0' cellstr(s2')'];
set(ax,'XAxisLocation','top','YAxisLocation','left','ydir','reverse');
set(ax,'XTick', (1:size(sm,2))+0.5 )
set(ax,'YTick', (1:size(sm,1))+0.5 )
set(ax,'XTickLabel',x1')
set(ax,'YTickLabel',x2)
% axis equal
axis square
hold on

for i = 2:l+1
	for j = 2:l+1
		if (cij(i,j) == 1)
			quiver(j+0.5,i+0.5,-0.75,-0.75,0,'ok','MarkerFaceColor','k','MarkerSize',4)
		end
		if (ci(i,j) == 1)
			quiver(j+0.5,i+0.5,0,-0.75,0,'ok','MarkerFaceColor','k','MarkerSize',4)
		end
		if (cj(i,j) == 1)
			quiver(j+0.5,i+0.5,-0.75,0,0,'ok','MarkerFaceColor','k','MarkerSize',4) 
		end
	end
end
