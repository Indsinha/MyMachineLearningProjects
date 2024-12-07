
# Drone Flight Stability Dataset

## Company Background
Welcome to **SkyPro Drones**, a drone manufacturing company specializing in high-performance drones for commercial and industrial applications. Our flagship product, the **SkyXplorer**, is designed to handle challenging conditions such as high winds, varying altitudes, and long flight durations.

As SkyPro prepares to launch SkyXplorer into the market, ensuring its flight stability under different conditions is critical. Stability directly impacts the drone's performance, safety, and reliability, which are key to gaining customer trust and achieving market success.

---

## Business Problem
SkyPro's engineering team has gathered extensive sensor data from prototype flights of SkyXplorer. However, identifying stability issues before the product hits the market remains a challenge. The company needs to develop a robust predictive model to classify flight stability into three categories:
1. **Stable**
2. **Slightly Unstable**
3. **Highly Unstable**

By predicting stability, the company can:
- Optimize drone hardware and software configurations.
- Improve safety by proactively addressing conditions leading to instability.
- Provide detailed stability insights to commercial clients, enhancing product appeal.

---

## Dataset Description
The dataset includes 150,000 observations collected from SkyXplorer's flight sensors. These attributes reflect real-world environmental and operational conditions.

### Predictors
1. **altitude**: Altitude of the drone in meters.
2. **speed**: Speed of the drone in meters per second (m/s).
3. **battery_voltage**: Battery voltage in volts.
4. **wind_speed**: Wind speed during the flight in meters per second (m/s).
5. **gps_signal_strength**: GPS signal strength as a percentage (0-100).
6. **motor_temperature**: Temperature of the drone's motor in degrees Celsius (°C).
7. **rotor_rpm**: Rotations per minute (RPM) of the drone's rotors.
8. **yaw**: Yaw angle of the drone in degrees.
9. **pitch**: Pitch angle of the drone in degrees.
10. **roll**: Roll angle of the drone in degrees.
11. **signal_to_noise_ratio**: Signal-to-noise ratio (SNR) in decibels (dB).
12. **weather_condition**: Binary variable (0: Clear, 1: Cloudy).
13. **flight_mode**: Binary variable (0: Manual, 1: Autonomous).
14. **proximity_alert**: Binary variable indicating proximity alerts (0: No alert, 1: Alert).
15. **rotor_efficiency**: Efficiency of the rotors as a percentage (0-100).
16. **camera_angle**: Camera angle in degrees.
17. **signal_latency**: Signal latency in milliseconds.
18. **gps_accuracy**: GPS accuracy as a percentage (0-100).
19. **altimeter_reading**: Altimeter readings in meters.
20. **gyroscope_variance**: Variance in gyroscope readings.
21. **magnetometer_strength**: Magnetometer strength in microteslas.
22. **flight_duration**: Flight duration in minutes.
23. **payload_weight**: Payload weight in kilograms.
24. **throttle_position**: Throttle position as a percentage (0-100).
25. **pitch_variance**: Variance in pitch readings.
26. **roll_variance**: Variance in roll readings.
27. **yaw_variance**: Variance in yaw readings.
28. **ambient_temperature**: Ambient temperature in degrees Celsius (°C).
29. **barometric_pressure**: Barometric pressure in hectopascals (hPa).
30. **humidity**: Humidity percentage.
31. **altitude_variance**: Variance in altitude readings.
32. **battery_health**: Battery health as a percentage (0-100).
33. **rotor_balance**: Rotor balance index.
34. **weather_index**: Weather severity index (0-10).

### Target Variable
- **stability**: The stability level of the drone during flight. It has three categorical levels:
  1. **Stable**
  2. **Slightly Unstable**
  3. **Highly Unstable**

---

## Task for Engineers
Your task is to build and evaluate a machine learning model to predict the **stability** of SkyXplorer based on the given attributes. The goal is to develop a model that accurately predicts stability and provides actionable insights for optimizing the drone's design.

### Expected Steps
1. **Data Exploration**:
   - Analyze the dataset to understand variable distributions and relationships.
   - Check for missing or inconsistent data and handle it appropriately.

2. **Feature Engineering**:
   - Investigate feature importance and apply techniques such as scaling, encoding categorical variables, and feature selection.

3. **Model Building**:
   - Build predictive models using machine learning techniques like decision trees, random forests, gradient boosting, or neural networks.
   - Use ensemble methods to improve accuracy and robustness.

4. **Hyperparameter Tuning**:
   - Optimize model performance through grid search, random search, or Bayesian optimization.

5. **Evaluation**:
   - Evaluate model performance using accuracy, precision, recall, F1-score, and confusion matrices.
   - Provide insights into model predictions and feature importance.

6. **Insights**:
   - Identify the key factors affecting drone stability.
   - Suggest design or operational improvements for SkyXplorer based on the findings.

---

## Deliverables
- A detailed report or notebook documenting:
  - Data exploration and preprocessing
  - Model development and evaluation
  - Recommendations for improving drone stability
- The final trained model and associated code.

---

SkyPro Drones is relying on your expertise to ensure the success of SkyXplorer. Good luck!


---

# data is available at 
https://drive.google.com/file/d/1vQqYpizF80HMV4DI4BtHlA2gWADD5jaU/view?usp=drivesdk
