# MSB1015-project-ayahuasca
MATLAB (version R2021a) code used for processing and analysis of EEG power spectra

To use the code:
1. Download the Fieldtrip toolbox (version 20220912)
    - https://www.fieldtriptoolbox.org/download/
2. Download the data from the Harvard dataverse
    - https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/VVE6QC
    - Download "freqs_1-30Hz.mat" and "freqs_30-100Hz.mat"
3. In a folder, place:
    - The Fieldtrip toolbox folder (fieldtrip-20220912/)
    - The downloaded data
    - The MATLAB scripts
 4. Run all the scripts in order
      - Step 1 & 2: Data processing for 1-30Hz and 30-100Hz independently; standard scripts
      - Step 3: Data visualization; live script with power band selection
      - Step 4: Data statistics (MANOVA); live script with power band and neighbour distance selection  
