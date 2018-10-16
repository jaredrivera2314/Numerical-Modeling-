%CEE103 Homework #6
%Jared Rivera 804603106
%Problem 2
clear all; close all; clc;
global x y X

x=[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15]; %Data points
y=[1.3;1.9;1.5;2.9;2.4;3.7;3.1;4.2;3.4;4.3;3.5;4.1;3.2;3.7;2.6]; %Given values
X=1:0.005:15; %Variables

s = [1.01:0.02:8 9:0.25:40];
vidObj = VideoWriter('Movie_b.mp4');
vidObj.Quality = 100;
vidObj.FrameRate = 50;
open(vidObj);

for i = 1:length(s)
    disp(i)
    %------------------------------------------------------
    %[f1,N1] = HW6_MLSa(s(i),X,y,x); % Function you need to write
    [f1,N1] = HW6_MLSb(s(i),X,y,x);
    %------------------------------------------------------
    h = figure(1);box on;grid on;
    plot(x,y,'ro','linewidth',2); hold on;
    plot(X,f1,'b','linewidth',2); hold on;
    plot(x,N1,'linewidth',2); hold off;
    ylabel('P1(x)','FontWeight','bold','FontSize',12);
    xlabel('x','FontWeight','bold','FontSize',12);
    set(gca,'FontWeight','bold','fontsize',15);grid on;
    axis([0 x(end) -0.5 5]);
    set(h, 'Position', [100, 100, 1100, 700]);
    drawnow
    writeVideo(vidObj, getframe(gca));
end
close(gcf)
close(vidObj);
