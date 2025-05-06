## Management Report: Multi-Class Detection of Fake Instagram Accounts

### Objective

This project aims to develop a machine learning model to detect and classify different types of fake accounts on Instagram. By identifying not just whether an account is fake but also its type (e.g., spam bot, scammer, etc.), the solution enhances the platform’s ability to mitigate harmful user activity.
The LLM aspect of the original LIMFADD dataset was just the augment the dataset using LLM to have a sizeable dataset to train and test the model. Therefore this is a synthetic data set. https://www.tapadhirdas.com/das-lab/datasets/limfadd

### Dataset & Features

The dataset includes labeled Instagram user accounts divided into:

* **Real Users**
* **Spam Bots**
* **Scam Accounts**
* **Bot Accounts**

Features used in the model include follower/following ratios, post frequency, bio characteristics, and other behavioral signals.

### Approach

1. **Data Preprocessing**: Included label encoding and handling of categorical features.
2. **Exploratory Data Analysis (EDA)**: Uncovered trends and correlations in the dataset to inform feature engineering.
3. **Model Development**:

   * Multiple classification algorithms were evaluated (like Logistic Regression, Random Forest, etc.).
   * Model performance was assessed using standard classification metrics (accuracy, precision, recall, F1-score).
   * Cross-validation ensured robustness and minimized overfitting.

### Key Findings

* Machine learning models demonstrated high accuracy in detecting and classifying fake accounts.
* Distinct behaviors among different fake account types enabled effective multi-class classification.
* LLM-enhanced feature generation significantly contributed to improved detection accuracy.

### Business Impact

* **Enhanced Trust**: Strengthening platform integrity by removing harmful accounts.
* **Operational Efficiency**: Automating detection reduces manual review workload.
* **Data-Driven Moderation**: Enables granular enforcement strategies by account type.

### Next Steps

* Deploy the trained model into a real-time monitoring pipeline.
* Periodically retrain the model with new data to maintain detection efficacy.
* Integrate with user reporting systems for feedback-based learning.

