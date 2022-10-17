%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%     Project MSB1015 Ayahuasca           %
%     Script 1: 1-30Hz processing         %
%     Guus Wilmink                        %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; close all;

%% Setup
% Add Fieldtrip toolbox to path
addpath('./fieldtrip-20220912');

% Load data and set correct dimension order
dataeeg30           = load(".\freqs_1-30Hz.mat").data_all_mean;
dataeeg30.dimord    = 'subj_rpt_chan_freq';

%% Split data by trial and subjects for each trial
sets                = []; % Pre-allocate structure
cfg.parameter       = 'powspctrm'; % Set input parameter

% t0 split
t0               = dataeeg30;
t0.powspctrm     = squeeze(dataeeg30.powspctrm(:,1,:,:));
t0.dimord        = 'subj_chan_freq';

% t1 split
t1               = dataeeg30; 
t1.powspctrm     = squeeze(dataeeg30.powspctrm(:,2,:,:)); 
t1.dimord        = 'subj_chan_freq';

% t2 split
t2               = dataeeg30; 
t2.powspctrm     = squeeze(dataeeg30.powspctrm(:,3,:,:)); 
t2.dimord        = 'subj_chan_freq';

% t3 split
t3               = dataeeg30; 
t3.powspctrm     = squeeze(dataeeg30.powspctrm(:,4,:,:));
t3.dimord        = 'subj_chan_freq';

% t4 split
t4               = dataeeg30;
t4.powspctrm     = squeeze(dataeeg30.powspctrm(:,5,:,:));
t4.dimord        = 'subj_chan_freq';

% t5 split
t5               = dataeeg30;
t5.powspctrm     = squeeze(dataeeg30.powspctrm(:,6,:,:));
t5.dimord        = 'subj_chan_freq';

%% Compute bandpowers
% Define frequency bands
all         = [1 30]; % All frequencies
delta       = [1 4];
theta       = [4 8];
alpha       = [8 13];
beta        = [13 30];

% The bandpower function only takes 2D matrices as input;
% Loop over every subject for each trial
for subj=1:16
    % t0
    temp                = t0;
    temp.powspctrm      = squeeze(temp.powspctrm(subj,:,:)); % Compress power spectrum for each subject
    temp.dimord         ='chan_freq'; % Set new dimension order
    d                   = bandpower(temp.powspctrm', temp.freq, delta, 'psd')'; % delta bandpower
    t                   = bandpower(temp.powspctrm', temp.freq, theta, 'psd')'; % theta bandpower
    a                   = bandpower(temp.powspctrm', temp.freq, alpha, 'psd')'; % alpha bandpower
    b                   = bandpower(temp.powspctrm', temp.freq, beta, 'psd')'; % beta bandpower
    temp.powspctrm_b    = [d t a b]; % Combine bands into one spectrum
    temp.freq           = [2.5 6 10.5 21.5]; % Set frequencies as average band frequency
    temp_str_t0{subj}   = temp; % Assign to structure
    
    % t1
    temp                = t1;
    temp.powspctrm      = squeeze(temp.powspctrm(subj,:,:)); % Compress power spectrum for each subject
    temp.dimord         ='chan_freq'; % Set new dimension order
    d                   = bandpower(temp.powspctrm', temp.freq, delta, 'psd')'; % delta bandpower
    t                   = bandpower(temp.powspctrm', temp.freq, theta, 'psd')'; % theta bandpower
    a                   = bandpower(temp.powspctrm', temp.freq, alpha, 'psd')'; % alpha bandpower
    b                   = bandpower(temp.powspctrm', temp.freq, beta, 'psd')'; % beta bandpower
    temp.powspctrm_b    = [d t a b]; % Combine bands into one spectrum
    temp.freq           = [2.5 6 10.5 21.5]; % Set frequencies as average band frequency
    temp_str_t1{subj}   = temp; % Assign to structure
    
    % t2
    temp                = t2;
    temp.powspctrm      = squeeze(temp.powspctrm(subj,:,:)); % Compress power spectrum for each subject
    temp.dimord         ='chan_freq'; % Set new dimension order
    d                   = bandpower(temp.powspctrm', temp.freq, delta, 'psd')'; % delta bandpower
    t                   = bandpower(temp.powspctrm', temp.freq, theta, 'psd')'; % theta bandpower
    a                   = bandpower(temp.powspctrm', temp.freq, alpha, 'psd')'; % alpha bandpower
    b                   = bandpower(temp.powspctrm', temp.freq, beta, 'psd')'; % beta bandpower
    temp.powspctrm_b    = [d t a b]; % Combine bands into one spectrum
    temp.freq           = [2.5 6 10.5 21.5]; % Set frequencies as average band frequency
    temp_str_t2{subj}   = temp; % Assign to structure
    
    % t3
    temp                = t3;
    temp.powspctrm      = squeeze(temp.powspctrm(subj,:,:)); % Compress power spectrum for each subject
    temp.dimord         ='chan_freq'; % Set new dimension order
    d                   = bandpower(temp.powspctrm', temp.freq, delta, 'psd')'; % delta bandpower
    t                   = bandpower(temp.powspctrm', temp.freq, theta, 'psd')'; % theta bandpower
    a                   = bandpower(temp.powspctrm', temp.freq, alpha, 'psd')'; % alpha bandpower
    b                   = bandpower(temp.powspctrm', temp.freq, beta, 'psd')'; % beta bandpower
    temp.powspctrm_b    = [d t a b]; % Combine bands into one spectrum
    temp.freq           = [2.5 6 10.5 21.5]; % Set frequencies as average band frequency
    temp_str_t3{subj}   = temp; % Assign to structure
    
    % t4
    temp                = t4;
    temp.powspctrm      = squeeze(temp.powspctrm(subj,:,:)); % Compress power spectrum for each subject
    temp.dimord         ='chan_freq'; % Set new dimension order
    d                   = bandpower(temp.powspctrm', temp.freq, delta, 'psd')'; % delta bandpower
    t                   = bandpower(temp.powspctrm', temp.freq, theta, 'psd')'; % theta bandpower
    a                   = bandpower(temp.powspctrm', temp.freq, alpha, 'psd')'; % alpha bandpower
    b                   = bandpower(temp.powspctrm', temp.freq, beta, 'psd')'; % beta bandpower
    temp.powspctrm_b    = [d t a b]; % Combine bands into one spectrum
    temp.freq           = [2.5 6 10.5 21.5]; % Set frequencies as average band frequency
    temp_str_t4{subj}   = temp; % Assign to structure
    
    % t5
    temp                = t5;
    temp.powspctrm      = squeeze(temp.powspctrm(subj,:,:)); % Compress power spectrum for each subject
    temp.dimord         ='chan_freq'; % Set new dimension order
    d                   = bandpower(temp.powspctrm', temp.freq, delta, 'psd')'; % delta bandpower
    t                   = bandpower(temp.powspctrm', temp.freq, theta, 'psd')'; % theta bandpower
    a                   = bandpower(temp.powspctrm', temp.freq, alpha, 'psd')'; % alpha bandpower
    b                   = bandpower(temp.powspctrm', temp.freq, beta, 'psd')'; % beta bandpower
    temp.powspctrm_b    = [d t a b]; % Combine bands into one spectrum
    temp.freq           = [2.5 6 10.5 21.5]; % Set frequencies as average band frequency
    temp_str_t5{subj}   = temp; % Assign to structure
end
% Replace trials with new structures
t0  = temp_str_t0';
t1  = temp_str_t1';
t2  = temp_str_t2';
t3  = temp_str_t3';
t4  = temp_str_t4';
t5  = temp_str_t5';

%% Restructure data for further analyses
% Set frequencies for all frequencies and bandpassed
freq_all = 1:30;
freq_b   = [2.5 6 10.5 21.5];

% Recombine subject power spectra from cell structure (banded frequencies)
cfg.parameter       = 'powspctrm_b'; % Select banded power spectrum parameter
cfg.keepindividual  = 'yes'; % Keep subjects (don't average)
b_t0                = ft_freqgrandaverage(cfg, t0{:}); % Recombine t0
b_t1                = ft_freqgrandaverage(cfg, t1{:}); % Recombine t1
b_t2                = ft_freqgrandaverage(cfg, t2{:}); % Recombine t2
b_t3                = ft_freqgrandaverage(cfg, t3{:}); % Recombine t3
b_t4                = ft_freqgrandaverage(cfg, t4{:}); % Recombine t4
b_t5                = ft_freqgrandaverage(cfg, t5{:}); % Recombine t5

% Recombine subject power spectra from cell structure(all frequencies)
cfg.parameter   = 'powspctrm'; % Select full power spectrum parameter
for subj=1:16 % Loop to reset frequencies to all frequencies
    t0{subj}.freq=freq_all;
    t1{subj}.freq=freq_all;
    t2{subj}.freq=freq_all;
    t3{subj}.freq=freq_all;
    t4{subj}.freq=freq_all;
    t5{subj}.freq=freq_all;
end
all_t0=ft_freqgrandaverage(cfg, t0{:}); % Recombine t0
all_t1=ft_freqgrandaverage(cfg, t1{:}); % Recombine t1
all_t2=ft_freqgrandaverage(cfg, t2{:}); % Recombine t2
all_t3=ft_freqgrandaverage(cfg, t3{:}); % Recombine t3
all_t4=ft_freqgrandaverage(cfg, t4{:}); % Recombine t4
all_t5=ft_freqgrandaverage(cfg, t5{:}); % Recombine t5

% Add "all frequency" power spectra to trial structures
t0=all_t0;
t1=all_t1;
t2=all_t2;
t3=all_t3;
t4=all_t4;
t5=all_t5;
% Add "banded frequency" power spectra to trial structures
t0.powspctrm_b=b_t0.powspctrm_b;
t1.powspctrm_b=b_t1.powspctrm_b;
t2.powspctrm_b=b_t2.powspctrm_b;
t3.powspctrm_b=b_t3.powspctrm_b;
t4.powspctrm_b=b_t4.powspctrm_b;
t5.powspctrm_b=b_t5.powspctrm_b;

%% Save the processed data
processed_1_30Hz = [{t0}; {t1}; {t2}; {t3}; {t4}; {t5}];
savefile           = './processed_1_30Hz.mat';
save(savefile, 'processed_1_30Hz');