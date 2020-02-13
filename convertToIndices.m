function [l,r] = convertToIndices(interval, inputSpectrum)
%UNTITLED2 Summary of this function goes here
% ����������� �������� ��������� �������� �������
l_bound = interval(1);
r_bound = interval(2);
dW = inputSpectrum(2,1) - inputSpectrum(1,1);
min_delta = inputSpectrum(1,1);
l = floor((l_bound-min_delta)/dW);
r = ceil((r_bound-min_delta)/dW);
end

