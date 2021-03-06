function Hd = fir
%FIR Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.3 and Signal Processing Toolbox 7.5.
% Generated on: 12-Dec-2018 02:05:59

% Equiripple Bandstop filter designed using the FIRPM function.

% All frequency values are normalized to 1.

N      = 294;   % Order
Fpass1 = 0.09;  % First Passband Frequency
Fstop1 = 0.1;   % First Stopband Frequency
Fstop2 = 0.2;   % Second Stopband Frequency
Fpass2 = 0.21;  % Second Passband Frequency
Wpass1 = 1;     % First Passband Weight
Wstop  = 1;     % Stopband Weight
Wpass2 = 1;     % Second Passband Weight
dens   = 20;    % Density Factor

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, [0 Fpass1 Fstop1 Fstop2 Fpass2 1], [1 1 0 0 1 1], ...
           [Wpass1 Wstop Wpass2], {dens});
Hd = dfilt.dffir(b);

% [EOF]
