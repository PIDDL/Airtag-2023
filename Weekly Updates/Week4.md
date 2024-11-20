**AirTag (Week 6/Week 4):** 

- Work related to SDatasets and MDatasets was completed.

- The past few weeks, I had to work on figuring out if I could reproduce the results for the UDatasets and DepImpact Datasets.

- The issue was that there were no UDataset/DI Datasets output logs present to verify reproduction results against.

- Initial plan was to check the provided pre-trained models. If there was one for the UDatasets, I could use that to generate the ‘ground truth’ for the UDatasets.

- **However**, the pre-trained models provided did not have one for the UDatasets, or the DEPIMPACT datasets.

* Talha and I raised 6 GitHub issues. We received responses from the author a few hours ago.

<https://github.com/dhl123/Airtag-2023/issues/7>

This issue was related to the graph component of AirTag, specifically the construction of the graph. A code script was provided to produce the graph after AirTag had been run as well as a base file to compare the results against.

However, these 2 .dot files (one provided and one produced by the script), were both unviewable since these files contained syntax errors. 

The author suggested a fix that solved most of the errors but one error still remains, that is not clear how to solve.

<https://github.com/dhl123/Airtag-2023/issues/3>

This issue was related to the reproduction of the results for UDatasets, specifically we required the preprocessed, non-tokenised raw log files so that we could run the evaluation script against it.

The author has provided some log files through a Drive link, however these seem to be the incorrect files as they pertain to the Single Host datasets. It may be possible that these were used for the UDataset files, although very unlikely. 

<https://github.com/dhl123/Airtag-2023/issues/5>

This issue was related to running ATLAS on the DepImpact datasets, specifically how the results mentioned in the paper were produced. 

The author has provided a code script, we are yet to have a look at it.
