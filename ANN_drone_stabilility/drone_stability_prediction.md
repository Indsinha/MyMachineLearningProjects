
# Drone Flight Stability Prediction using ANN 🚁✨

This project focuses on predicting drone flight stability using an Artificial Neural Network (ANN). Below is a step-by-step explanation of the methodology and the corresponding code blocks.

---

## Step 1: Importing Libraries and Loading Data 📂📊

```python
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline

# Load the dataset
url = "https://drive.google.com/uc?id=1vQqYpizF80HMV4DI4BtHlA2gWADD5jaU"
df = pd.read_csv(url)

# Separate target variable
X = df.drop('stability', axis=1)
y = df['stability']
```

**Why?**
- The necessary libraries are imported for data handling, preprocessing, and model building.
- The dataset is loaded, and features (`X`) are separated from the target (`y`). This establishes the foundation for the analysis.

---

## Step 2: Data Inspection 🔍🧹

```python
# Check for data types, distributions, and outliers
print(X.info())
print(X.describe())
```

**Why?**
- To understand the dataset's structure, identify missing values, and ensure the data types are appropriate for processing.

---

## Step 3: Exploratory Data Analysis (EDA) 📈🛠️

```python
# Visualize correlations
import seaborn as sns
import matplotlib.pyplot as plt

corr = X.corr()
plt.figure(figsize=(12, 10))
sns.heatmap(corr, annot=True, fmt=".2f")
plt.show()
```

**Why?**
- EDA uncovers patterns in the data, such as multicollinearity, which may affect model performance.

---

## Step 4: Data Preprocessing 🧹🛠️

```python
# Preprocessing pipeline
preprocessor = ColumnTransformer(
    transformers=[
        ('num', StandardScaler(), ['feature1', 'feature2']),
        ('cat', OneHotEncoder(), ['feature3'])
    ]
)
```

**Why?**
- Scaling numerical data ensures uniformity, while encoding categorical variables makes them suitable for machine learning models.

---

## Step 5: ANN Model Design 🧠⚙️

```python
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense

# Define the model
model = Sequential([
    Dense(64, activation='relu', input_shape=(X.shape[1],)),
    Dense(32, activation='relu'),
    Dense(1, activation='sigmoid')
])
```

**Why?**
- An ANN with multiple layers captures complex, non-linear relationships in the data.

---

## Step 6: Model Compilation and Training 🚀📈

```python
model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])
history = model.fit(X_train, y_train, epochs=50, validation_data=(X_test, y_test))
```

**Why?**
- The `adam` optimizer is used for efficient training, and loss is minimized using binary cross-entropy for classification.

---

## Step 7: Model Evaluation 📊✅

```python
# Evaluate the model
loss, accuracy = model.evaluate(X_test, y_test)
print(f"Test Accuracy: {accuracy:.2f}")
```

**Why?**
- Evaluating the model ensures its performance meets expectations.

---

## Step 8: Insights and Visualization 📉🔍

```python
# Plot training and validation loss
plt.plot(history.history['loss'], label='Training Loss')
plt.plot(history.history['val_loss'], label='Validation Loss')
plt.legend()
plt.show()
```

**Why?**
- Visualizing training dynamics helps identify potential overfitting or underfitting.

---

## Conclusion 🎯✨

This notebook implements an ANN to predict drone stability using structured and well-preprocessed data. Each step ensures reliability and accuracy in the prediction pipeline.

