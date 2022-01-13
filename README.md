# HMM_Anomaly_Detection_Python

# This is the script repo for a student course IL2232 at KTH.

# This README file introduces the content of this repo, as well as a guideline of how to run the scripts.

# 1. Content introduction:

There are several folders in this repo, each containing one script for one particular anomaly detection case. The "script" folder contains some helper script for us, mainly the decimal to fixed point conversion.
In most cases, the function of the script is described by its folder name. In some rare cases, such as older versions, the folder name might be misleading. In section 2 and 3, we will introduces the method to run the scripts by using some typical scripts.

# 2. Environments:

The scripts (except script in the folder "script") are written using Jupyter Notebook. Our Jupyter Notebook version is 6.3.0.

The Python environment requirement:
    1) python 3.8.8. Other versions might work but the performance is not tested.
    2) hmmlearn package has to be installed. Please refer to the hmmlearn package Github repo (https://github.com/hmmlearn/hmmlearn) for install information. The installation is described in the readme file on this page. The installation should be pretty simple, but note that there are some dependencies written on that page.
    
# 3. How to run the scripts:

The general guideline is to use Jupyter Notebook to run the scripts. I assume that the reader knows how to use Jupyter Notebook.

## Script 1: HMM-Gaussian-normal-dist => HMM-Gaussian-normal-dist.ipynb
This script first generates synthetic normal distributed data. It then train and test the anomaly detection function on the generated data. There are comments describing the functionality of each step.
    
## Script 2: HMM-Gaussian-EEG => HMM-GMM.ipynb
This script reads the EEG data-set and performs anomaly detection. The last figure in this script should show two distinct lines, a red one and a blue one, if the script works correctly.
    
## Script 3: HMM-Multinomial-Generated-with-HMM => Multinomial-Dataset-Generated-with-Model.ipynb
This script generates synthetic discrete data using a pre-defined HMM model and then train and test another HMM model using this data. Anomalies are injected by generating another dataset using another model. If the script works correctly, cell with comment "plot the score" should show two distinct lines. They should be seperated if a line at y = -8 is drawn.

## Other scripts
Most scripts are functionally correct, and the reader could check them if interested. If needed, the reader could rely on the comment to understand the scripts. In some rare cases, the comment is misleading. If the reader is confused, he could always rely on the code.
