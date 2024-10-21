## **AirTag**

Original AirTag repository: https://github.com/dhl123/Airtag-2023/tree/main

My work repository: https://github.com/amaana259/Airtag-2023/tree/main

### **Requirements**

- *python* 3.6.15

- *tensorflow* 1.11.0

- *numpy* 1.19.5

- *thundersvm-gpu* (if GPU available), else *thundersvm-cpu*.

Other related packages may be required, please install them accordingly. For graph related packages, please refer to [ATLAS](https://github.com/purseclab/ATLAS).

### **Environment Used**

**Primary Environment:** conda

**Run these commands after installing conda:**
- conda config --add channels conda-forge

- conda config --set channel_priority flexible

- conda create -n py36_env python=3.6.15 tensorflow-gpu=1.11.0 cudatoolkit=9.0

- conda activate py36_env

- Install required dependencies and libraries (may include matplotlib, scikit-learn, etc.)

### **Datasets**

For running from scratch, original drive link for datasets: 
Download from [Drive](https://drive.google.com/drive/folders/1u5VNiYvFZaxLezK7uEsPRrIR5dtdfkHC?usp=sharing).

Datasets and log files for my run:

- Most of these can be found by cloning the repository.

- There are some directories that were too large to push to Github, you can download these from [Drive](https://drive.google.com/drive/folders/1jgoGpm-_scVGyIvhYJLir3uERrHkdh43?usp=sharing).

- Download all zip and tarball files from Drive and uncompress them into the main working directory (named Amaan for my repository).

Some of the files/folders on this link are present in my directories as well, they are named in the format <'file'>_original for e.g **ground_data_original**.

### **Directory Structure**

There are 5 main folders; **embedding_data, ground_data, training_data, models and logs.**

Each of these folders have subdirectories, with the format **amaan, amaanmul, '<>'_original**.

The directories named **amaan** correspond to the SDataset (single host attacks) runs, while the directories named **amaanmul** correspond to the MDataset (multi-host attacks) runs. (ground_data does not have a **amaan** directory, instead it has **my_ground_data**).

There are **two** scripts used to run the tool:
- **my_effect.sh** --> Single host attacks, prepares the training set files, pre-processes them and creates the models used for testing.

- **my_effect_m.sh** --> Multi host attacks, prepares the training set files, pre-processes them and creates the models used for testing.

Both scripts involve the use of SVM evaluation to prepare the final output logs.
- **evaluate_onesvm_SDatasets_custom.py** --> Used for the single host attacks and is executed in the script **my_effect.sh**.

- **evaluate_onesvm_12_ground_modify.py** --> Used for the multihost attacks for M1 and M2. Similar scripts are present for the other hosts M3, M4, M5 and M6.

These scripts have been modified to work with only a single GPU. If multiple GPUs are available, you may update the **gpu 0** flag in the script.


### **Running the tool**

```
bash my_effect.sh
```

```
bash my_effect_m.sh
```

### **Contact**:

25100127@lums.edu.pk
