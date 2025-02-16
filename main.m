clc, clear, close all

signal    = load('ECG.txt');                          % reading signal
indicator = indicatorUsingCorrelation(signal);        % Estimating Signal which indicate region ...
                                                        % ...where R Peaks are located...
                                                        % ...using correlation and Variance Concept                                              
threshold = calculateThreshold(indicator);            % Estimating Threshold Adaptively
RPeaks    = locateRPeaks(threshold,indicator,signal); % Detection of Rpeaks

figure(1)
plot(indicator,'b','LineWidth',1)
hold on
plot(zeros(1,length(indicator))+threshold,'r','LineWidth',1)
legend('Normalised Signal','Threshold')
title('         Thresholding')

figure(2)
subplot(2,1,1)
plot(signal,'b')
subtitle('Orginal Signal')

subplot(2,1,2)
plot(signal,'b','LineWidth',1)
hold on
plot(RPeaks,signal(RPeaks),'ro')
subtitle('R Peak Detection')
legend('ECG Signal','R Peaks')
sgtitle('         Output')