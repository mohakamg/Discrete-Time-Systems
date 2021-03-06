function y = bandstop120filt(x)
%DOFILTER Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.3 and DSP System Toolbox 9.5.
% Generated on: 10-Nov-2018 18:56:59

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % The following code was used to design the filter coefficients:
    %
    % Fpass1 = 100;   % First Passband Frequency
    % Fstop1 = 110;   % First Stopband Frequency
    % Fstop2 = 130;   % Second Stopband Frequency
    % Fpass2 = 140;   % Second Passband Frequency
    % Apass1 = 1;     % First Passband Ripple (dB)
    % Astop  = 60;    % Stopband Attenuation (dB)
    % Apass2 = 1;     % Second Passband Ripple (dB)
    % Fs     = 2000;  % Sampling Frequency
    %
    % h = fdesign.bandstop('fp1,fst1,fst2,fp2,ap1,ast,ap2', Fpass1, Fstop1, ...
    %                      Fstop2, Fpass2, Apass1, Astop, Apass2, Fs);
    %
    % Hd = design(h, 'butter', ...
    %     'MatchExactly', 'stopband', ...
    %     'SystemObject', true);
    
    Hd = dsp.BiquadFilter( ...
        'Structure', 'Direct form II', ...
        'SOSMatrix', [1 -1.86322962983666 1 1 -1.80242049298077 ...
        0.98551114832335; 1 -1.86322962983666 1 1 -1.88858304050748 ...
        0.989136103058992; 1 -1.86322962983666 1 1 -1.78012136364565 ...
        0.958091495557063; 1 -1.86322962983666 1 1 -1.86706177213698 ...
        0.968027834300588; 1 -1.86322962983666 1 1 -1.76321453424507 ...
        0.934079019429684; 1 -1.86322962983666 1 1 -1.84530008805964 ...
        0.948185443236866; 1 -1.86322962983666 1 1 -1.75241603717127 ...
        0.914731519428403; 1 -1.86322962983666 1 1 -1.82387671948874 ...
        0.9301814106276; 1 -1.86322962983666 1 1 -1.74796954062813 ...
        0.900880609075702; 1 -1.86322962983666 1 1 -1.80346749707607 ...
        0.914672900011767; 1 -1.86322962983666 1 1 -1.74968159489354 ...
        0.892918474998058; 1 -1.86322962983666 1 1 -1.78487982595668 ...
        0.902409310252981; 1 -1.86322962983666 1 1 -1.75698746039494 ...
        0.89081882298815; 1 -1.86322962983666 1 1 -1.76904937531438 ...
        0.894197114228869], ...
        'ScaleValues', [0.992061780211239; 0.992061780211239; ...
        0.980097424720584; 0.980097424720584; 0.969417062676473; ...
        0.969417062676473; 0.96042656928915; 0.96042656928915; ...
        0.953433446965677; 0.953433446965677; 0.948656134426109; ...
        0.948656134426109; 0.94623374344151; 0.94623374344151; 1]);
end

s = double(x);
y = step(Hd,s);

