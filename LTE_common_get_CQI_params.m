function CQI_params = LTE_common_get_CQI_params(CQI)

% CQI table
%
% CQI	Mod     rate (x 1024)	rate (1/n)
% 1     QPSK    78              13.13
% 2     QPSK	120             8.53
% 3     QPSK	193             5.31
% 4     QPSK	308             3.32
% 5     QPSK	449             2.28
% 6     QPSK	602             1.70
% 7     16QAM	378             2.71
% 8     16QAM	490             2.09
% 9     16QAM	616             1.66
% 10	64QAM	466             2.20
% 11	64QAM	567             1.81
% 12	64QAM	666             1.54
% 13	64QAM	772             1.33
% 14	64QAM	873             1.17
% 15	64QAM	948             1.08

% Some extra code would be needed if CQIs<1 would be introduced, which is
% not the case now.

if strcmp(CQI,'range')
    CQI_params = [1 15];
else
    CQI_params = CQI_params_func(CQI);
end
