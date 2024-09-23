Prefect: Simplifying Workflow Management in Python
What is Prefect?
Prefect is a Python package that revolutionizes workflow management and automation for complex data pipelines. It offers:

User-friendly interface for defining, scheduling, and executing tasks
Seamless orchestration of task flows and dependencies
Robust error handling, retry mechanisms, and notification systems

Services in this project:
Detailed Service Explanations

1. Postgres Database (database service)
   Uses the official Postgres Docker image
   Stores your application data
   Password set via environment variable
   Connected to the back-tier network
2. Adminer (adminer service)
   Full-featured database management tool
   Supports multiple database types (MySQL, PostgreSQL, SQLite, etc.)
   Web interface for easy database management
   Connected to both back-tier and front-tier networks
3. Grafana (grafana service)
   Open-source platform for monitoring and observability
   Allows querying, visualization, and alerting on metrics
   Uses a specific user ID for security
   Mounts volumes for configuration and dashboards
   Connected to both back-tier and front-tier networks

Use Case
This setup is ideal for scenarios where you need: 1. Persistent data storage (Postgres) 2. Easy database management (Adminer) 3. Advanced data visualization and monitoring (Grafana)

By combining these services, you create a powerful monitoring system that can track, analyze, and visualize your application's performance and data in real-time.

Prefect is a workflow management system that automates and simplifies complex data pipelines.

Prefect organizes tasks into flows, streamlining the orchestration of complex processes like monitoring ML models for data drift. This ensures proper execution sequence and timing of each step in the workflow.

---

├── taxi_monitoring
│ ├── data
│ │ ├── green_tripdata_2022-01.parquet
│ │ └── green_tripdata_2022-02.parquet
│ ├── docker-compose.yaml
│ ├── requirements.txt
│ └── src
│ ├── download_data.py
│ └── load_and_preprocess_data.py

---

License:
this project is developed under the supervision of DataScientest Bootcamp
