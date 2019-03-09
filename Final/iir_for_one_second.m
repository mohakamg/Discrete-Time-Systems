function Hd = iir_for_one_second
%IIR_FOR_ONE_SECOND Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.3 and Signal Processing Toolbox 7.5.
% Generated on: 12-Dec-2018 03:29:37

% Butterworth Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are normalized to 1.

N   = 10;     % Order
Fc1 = 0.375;  % First Cutoff Frequency
Fc2 = 0.59;   % Second Cutoff Frequency

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass('N,F3dB1,F3dB2', N, Fc1, Fc2);
Hd = design(h, 'butter');

% [EOF]