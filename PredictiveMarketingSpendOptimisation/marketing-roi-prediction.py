import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score
import shap

# Load and preprocess data
def load_and_preprocess_data(file_path):
    data = pd.read_csv(file_path)
    # Perform data cleaning, handle missing values, etc.
    return data

# Feature engineering
def engineer_features(data):
    data['historical_roi'] = data['sales'] / data['spend']
    data['click_through_rate'] = data['clicks'] / data['impressions']
    data['conversion_rate'] = data['conversions'] / data['clicks']
    # Add more feature engineering steps as needed
    return data

# Train model
def train_model(X, y):
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    
    scaler = StandardScaler()
    X_train_scaled = scaler.fit_transform(X_train)
    X_test_scaled = scaler.transform(X_test)
    
    model = RandomForestRegressor(n_estimators=100, random_state=42)
    model.fit(X_train_scaled, y_train)
    
    return model, scaler, X_test_scaled, y_test

# Evaluate model
def evaluate_model(model, X_test, y_test):
    y_pred = model.predict(X_test)
    mae = mean_absolute_error(y_test, y_pred)
    rmse = np.sqrt(mean_squared_error(y_test, y_pred))
    r2 = r2_score(y_test, y_pred)
    return mae, rmse, r2

# Interpret model
def interpret_model(model, X):
    explainer = shap.TreeExplainer(model)
    shap_values = explainer.shap_values(X)
    shap.summary_plot(shap_values, X)

# Main function
def main():
    data = load_and_preprocess_data('marketing_data.csv')
    data = engineer_features(data)
    
    X = data.drop(['sales', 'roi'], axis=1)
    y = data['roi']
    
    model, scaler, X_test_scaled, y_test = train_model(X, y)
    mae, rmse, r2 = evaluate_model(model, X_test_scaled, y_test)
    
    print(f"Model Performance: MAE={mae:.2f}, RMSE={rmse:.2f}, R2={r2:.2f}")
    
    interpret_model(model, X)
    
    # Use the model to predict ROI for new marketing scenarios
    new_scenario = pd.DataFrame({
        'channel': ['social_media'],
        'spend': [1000],
        'impressions': [100000],
        'clicks': [5000],
        'conversions': [100]
    })
    new_scenario = engineer_features(new_scenario)
    new_scenario_scaled = scaler.transform(new_scenario)
    predicted_roi = model.predict(new_scenario_scaled)
    print(f"Predicted ROI for new scenario: {predicted_roi[0]:.2f}")

if __name__ == "__main__":
    main()
