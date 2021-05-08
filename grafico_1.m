function grafico_1(X1, Y1)
%CREATEFIGURE(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 08-May-2021 15:21:12

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1,'Marker','*','LineStyle','none','Color',[1 0 0]);

% Create ylabel
ylabel({'a(x)'});

% Create xlabel
xlabel({'x'});

% Create title
title({'a(x) = 6log4(5x + 15) - log2(2x)'});

box(axes1,'on');
hold(axes1,'off');
