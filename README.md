####data is already downloaded and included in this repo called data.zip. if you want to download the data again, please make sure you download it and rename it to `FUCI_dataset.zip`, the downloading script is also included in `run_analysis.R`

clone this repo to your local machine.
run run_analysis.R with R Studio(best choice).
the script will download zip file if there's not one and unzip it. the script will find those .txt files and read them into data.tables before perform any analysis.
the script needs plyr package to perform certain anaylsis, if you don't have this package installed, please do install.packages('plyr') to install it.
type `x_all`, `y_all`, `subject_all`, `clean_data`, `final_tidy` to check all variables.
