# Feature Extraction (R Peaks) of ECG Signal
## Overview
This MATLAB code locates R peaks in ECG signals with artifacts using a Gaussian pulse to generate an indicator signal. The indicator signal identifies regions where the R wave is present in the ECG.
![Image](https://github.com/user-attachments/assets/3cddf381-63f3-4df6-bb88-ec5acd824d9d)

## Function: indicatorUsingCorrelation
### Purpose
Generates an indicator signal that identifies R wave regions using correlation between the ECG signal and a Gaussian pulse (kernel). Returns a normalized signal.

## Function: calculateThreshold
### Purpose
Estimates a threshold value adaptively.
![Image](https://github.com/user-attachments/assets/b3fc7135-4c27-4265-8891-e99a34eb36b9)

## Function: locateRPeaks
### Purpose
It finds the index value of R peak in ECG Signal.

## Inputs
- signal : Input ECG signal with artifact.

## Outputs
- Extract index value of R peaks



