## **Project Details**

The project uses NYC taxi data from 2022 to demonstrate ML model monitoring. It focuses on identifying data drift, ensuring models stay accurate over time, and maintaining the health of machine learning pipelines.

### **Dataset Overview**

We monitor the following data collected during NYC taxi trips:
| Column Name | Description | Data Type |
|------------------------|-------------------------------------------------|------------------|
| VendorID | Vendor identifier | int64 |
| lpep_pickup_datetime | Trip start time | datetime64[us] |
| lpep_dropoff_datetime | Trip end time | datetime64[us] |
| passenger_count | Number of passengers | int64 |
| trip_distance | Distance traveled during the trip | float64 |
| fare_amount | Base fare of the trip | float64 |
| total_amount | Total amount of the trip | float64 |
| payment_type | Payment method | int64 |

### **ML Model Monitoring**

This project implements machine learning model monitoring to detect when models experience "drift," ensuring that predictions remain reliable.

---

## **Overview**

This project demonstrates the use of Prefect for managing and orchestrating complex workflows, especially in machine learning monitoring setups. By leveraging a combination of services like Postgres, Adminer, and Grafana, it offers a comprehensive solution for monitoring machine learning models, tracking data drifts, and ensuring the health of data pipelines.

## **What is Prefect?**

Prefect is a Python package that streamlines workflow management and automation for complex data pipelines. It provides:

- A user-friendly interface for defining, scheduling, and executing tasks.
- Seamless orchestration of task flows and dependencies.
- Robust error handling, retry mechanisms, and notification systems to ensure reliability.

## **Services in This Project**

This project consists of several integrated services to facilitate data storage, monitoring, and management:

### **1. Postgres Database**

- **Image**: Official Postgres Docker image
- **Purpose**: Persistent storage for application data
- **Configuration**: Password set via environment variables, connected to the back-tier network

### **2. Adminer**

- **Image**: Adminer Docker image
- **Purpose**: Web-based database management tool
- **Features**: Supports multiple databases (PostgreSQL, MySQL, SQLite, etc.), providing an intuitive interface for easy management

### **3. Grafana**

- **Image**: Grafana Docker image
- **Purpose**: Visualization and monitoring platform
- **Features**: Provides querying, visualization, and alerting on data, with user-specific security settings and persistent volume mounts

## **Use Case**

This setup is ideal for scenarios requiring:

1. **Persistent data storage** (Postgres)
2. **Easy database management** (Adminer)
3. **Advanced data visualization and monitoring** (Grafana)

These services work together to create a powerful real-time monitoring system that tracks, analyzes, and visualizes application performance and data.

---

## **Tools Used**

### **Prefect**:

- Automates workflows and organizes tasks into flows for smooth orchestration.
- In this project, Prefect is used to organize tasks like monitoring ML models for drift.

### **Evidently**:

- Provides metrics for detecting data drift, including prediction drift and missing values.
- Integrated with Prefect to continuously monitor model health.

---

## **How to Run**

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```
2. **Build and run the services using Docker**:
   ```bash
   docker-compose up --build
   ```
3. **Access the services**:

   - **Grafana**: `http://localhost:3000`
   - **Adminer**: `http://localhost:8080`
   - **Prefect API and Dashboard**: `http://localhost:4200`

4. **Run the Python script for model monitoring**:
   ```bash
   python src/evidently_metrics_calculation.py
   ```

---

## **Debugging and Testing**

For Evidently integration debugging and test reports, run:

```bash
python src/debug_drift.py
```

---

## **Conclusion: Mastering ML Model Monitoring**

By combining Prefect and Evidently, this project demonstrates how to maintain healthy machine learning models by detecting data drift and automating workflows.

### **Key Achievements**:

- **Integration Mastery**: Seamlessly integrated Evidently with Prefect.
- **Drift Detection**: Monitored prediction and feature drift.
- **Automation**: Established robust workflows for real-time monitoring using Prefect.

---

## **License**

This project is developed under the supervision of the DataScientest Bootcamp.

---

This README offers a clear, structured, and informative guide for users to understand the project and its components.
