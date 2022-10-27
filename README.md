# MSB1015-project-ayahuasca
MATLAB (version R2021a) code used for processing and analysis of EEG power spectra

To use the code:
1. Download the Fieldtrip toolbox (version 20220912) and gscatter3 and kernel pca functions
    - https://www.fieldtriptoolbox.org/download/
    - https://nl.mathworks.com/matlabcentral/fileexchange/37970-gscatter3
    - https://nl.mathworks.com/matlabcentral/fileexchange/69378-kernel-principal-component-analysis-kpca
2. Download the data from the Harvard dataverse
    - https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/VVE6QC
          Associated paper: https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0137202#sec009
    - Download "freqs_1-30Hz.mat" and "freqs_30-100Hz.mat"
3. In a folder, place:
    - The (unzipped) Fieldtrip toolbox folder (fieldtrip-20220912/) and gscatter3 and kernel PCA folders
    - The downloaded data
    - The MATLAB scripts
 4. Run scripts Step_1... and Step_2... first; all subsequent Steps can be run independently after these scripts
