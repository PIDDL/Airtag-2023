## **AirTag**

Main repository: https://github.com/amaana259/Airtag/tree/main

## **Steps**

- Fork repository (link provided on the Provenance Github repo).
- Go through the directories.

To be done:

- Preprocess provided datasets.
- Train model on the pre-processed datasets, produce embeddings.
- Test the model on the provided test datasets.
- Verify results.

---

## **Benefits and Issues Faced**:

- The AirTag tool works by training the model on several extensive datasets simultaneously in parallel, which requires extensive compute power. The authors have implemented their training processes on a 4-core GPU. As I did not possess such compute power, I have yet to train the model myself and verify the results.

- I tried to create a similar environment on GPU-providing tools like Kaggle but this required updating all of the provided code files and modifying them to fit the Kaggle environment. For instance, the code files provided assume that the files are in the same directory, thus import statements are not used and files are accessed simply by using ‘./sample.txt’. On Kaggle however, these have to be updated to point towards the location provided by Kaggle for e.g ‘/kaggle/working/sample.txt. I tried to do this for run of the training process but the process was still slow and eventually resulted in the same file access errors mentioned above as I was unable to modify all of them.

- I then tried to clone the directory on my local device and tried to run the parallel code sequentially, but my laptop overheated and I was unable to continue even the pre-processing part of the AirTag tool.

- The pre-trained models however (provided with the code files), produce the proposed results (results also provided). Findings mentioned in the paper are to be verified after I do manual runs.

- The repository has a well-defined code structure and has separate code files for each sub-process of the tool. These are coded in Python files so I was able to verify that each component mentioned in the paper is in fact present in the code files as well.

- The paper mentioned use of the BERT model which is also consistent with the code. The training data is pre-processed to create embedding vectors and then used to train the model, as defined in the paper.

- The training datasets are very large in size (around 12 GB) and had to be downloaded from a separate Google Drive. I had trouble storing these datasets on my personal device but given compute resources are available, I will be able to implement the manual pre-processing, training and testing runs.


---

## **How much was run?**

- The provided code in the repository has not been run, due to the extensive compute required.


---

## **Code Quality**

- **Code structure**: Well-defined, separate files are made for each sub-process of the tool.

- **Readability**: Easy-to-read.

- **Commenting and documentation**: Well-documented and code is commented.

- **Optimization**: After manual runs, I can look to optimise the Python code, one example of passing a code snippet to GPT did optimise and lower the running time of the snippet.

- **Adherence to best practices**: Yes.


---

## **Dataset Availability**

**For Main repository**:

- **Dataset used**: Extensive datasets for multiple attacks have been provided.

- **Format**: train files, benign files and test files provided.

- **Availability**: Available through Google Drive link.

- **Any issues or challenges**: Large size requires prior memory and storage.



---

## **Code Explanations**

- **Why was a particular algorithm or model chosen?**  

    Appears to be a simple unsupervised deep learning model that trains on given dataset and tests on the unseen.

- **Explanation of important functions or classes.**

    Separate files and scripts for each subprocess i.e pre-training, modeling, optimisation, tokenisation and model run, with easy-to-understand code and well-explained commenting.

---

## **Provided Results Evaluation**

- **Evaluation of provided results:**

    Result simulation to be run after compute resources (power, memory etc.) available.

- **Comparison to expected results:**

    N/A

- **Issues or anomalies:**

    N/A


---

## **Conclusion**

- **Main takeaways:**

    After availability of compute resources, should be able to train a fresh model and simulate results.

- **Final thoughts or recommendations:**

    None.

- **Next steps for improvement:**

    One idea is to merge MAGIC and AirTag to cross-evaluate the performance of the two. The idea is to use the anomaly detection prowess of MAGIC to predict if anomalies/malicious events in attack logs are present, then see what the unsupervised learning process of AirTag predicts the malicious event to be.


