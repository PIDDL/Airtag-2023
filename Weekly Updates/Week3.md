## **AirTag**

Main repository: https://github.com/amaana259/Airtag/tree/main

### **Steps**

- Fork repository (link provided on the Provenance Github repo).
- Go through the directories.
- Preprocess provided datasets.
- Train model on the pre-processed datasets, produce embeddings.
- Test the model on the provided test datasets.
- Test the model on provided multihost (MDatasets) datasets.
- Verify results.

---

### **Benefits and Issues Faced**:

- The repository has a well-defined code structure and has separate code files for each sub-process of the tool. These are coded in Python files so I was able to verify that each component mentioned in the paper is in fact present in the code files as well.

- The paper mentioned use of the BERT model which is also consistent with the code. The training data is pre-processed to create embedding vectors and then used to train the model, as defined in the paper.

- Multi-host datasets were pre-processed and evaluated using the custom evaluate script files.

- Libraries for environment required were outdated. Used conda to create a sustainable environment.

- Specific environment required which was difficult to achieve without proper permissions on compute host.

- Both SDatasets and MDatasets results verified. No ground truth available for UDatasets.

- UDatasets still to be tested.

- No code for graph/attack sequence production.

- No code for anomaly detection mentioned in the paper.


---

### **How much was run?**

- The entire code was run.

- All datasets pre-processed, pre-trained, embeddings created, models made and saved, and test set embeddings created.

- OneSVM models run for SDatasets and MDatasets on benign and test data, compared with provided ground truth. 


---

### **Environment Setup**

- Much of the time put into making sure the environments were consistent.

- Working on remote host with no sudo permissions, I had to first install the old version of Python manually using curl and sourcebash updates for the SDataset runs.

- After starting up the virtual environment with the correct conditions, I updated the effect.sh script to work with only one GPU (Tesla GPU available to me) and ran the script. I also modified the working directory structure with my own structure.

- For MDataset runs, I utilised conda and made a virtual environment with the required dependencies on it.

- Tested SDataset runs on the conda environment as well, same results as last week's results, (with custom virtual environment).

### **Results**

<!-- ![My Local Image](images_md/s1_res.png) -->

- **M12 Log Results**:

Minor discrepencies within the results, specifically for True Negatives and False Positives. Exact reproduction of results for True Positives and False Negatives, and associated rates.

- **M34 Log Results**:

Minor discrepencies within the results, specifically for True Negatives and False Positives. Exact reproduction of results for True Positives and False Negatives, and associated rates.

- **M56 Log Results**:

Minor discrepencies within the results, specifically for True Negatives and False Positives. Exact reproduction of results for True Positives and False Negatives, and associated rates.

---

### **List of Issues**

-- Environment Setup
    - Outdated environment required virtual environments and then use of conda.

-- Dependencies
    - No requirements.txt with required libraries mentioned.
    - matplotlib, scikit-learn examples.

-- UDataset Ground Truth not available.
    - UDataset consists of attacks locally/manually executed, the ground truth for these was not defined clearly.

-- No clear instructions or scripts for evaluating UDatasets.

-- No mention of anomaly detection code or results as mentioned in paper.


---

### **Conclusion**

- **Main takeaways:**

    Successful reproduction of results for SDatasets and MDatasets.

- **Final thoughts or recommendations:**

    Obtain ground truth for UDatasets, include more clarity on the process and instructions for running the tool and associated code files.

- **Next steps for improvement:**

    Verify the results for UDatasets, these datasets were procured manually by the authors; difficult to reproduce.

    Obtain instructions for reproducing anomaly detection results mentioned in paper.


