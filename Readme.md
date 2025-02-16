# Feature Extraction (R Peaks) of ECG Signal
## Overview
This MATLAB code locates R peaks in ECG signals with artifacts using a Gaussian pulse to generate an indicator signal. The indicator signal identifies regions where the R wave is present in the ECG.

## Function: indicatorUsingCorrelation
### Purpose
Generates an indicator signal that identifies R wave regions using correlation between the ECG signal and a Gaussian pulse (kernel). Returns a normalized signal.

## Function: calculateThreshold
### Purpose
Estimates a threshold value adaptively.

## Function: locateRPeaks
### Purpose
It finds the index value of R peak in ECG Signal.

## Inputs
- signal : Input ECG signal with artifact.

## Outputs
- Extract index value of R peaks



