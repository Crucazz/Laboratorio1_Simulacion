function grafico_2(X1, Y1)
%CREATEFIGURE(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 08-May-2021 15:24:11

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1,'Marker','+','LineStyle','none','Color',[0 1 0]);

% Create ylabel
ylabel({'b(x)'});

% Create xlabel
xlabel({'X'});

% Create title
title({'b(x) = sen(6log10(2x + 9)) + cos(2ln(x + 16))'});

box(axes1,'on');
hold(axes1,'off');
