# FastAPI TodoApp with Docker and PostgreSQL

This project is a simple Todo application built using FastAPI. Instead of using a basic SQLite database, I opted for PostgreSQL to introduce a level of complexity by setting up and connecting two Docker containers: one for the FastAPI application and another for the PostgreSQL database.

## Project Overview

- **FastAPI**: Serves as the backend framework for the Todo application, handling API endpoints for managing tasks.
- **Docker**: The application and database are containerized using Docker, ensuring a consistent and isolated environment for deployment.
- **Docker Compose**: Used to orchestrate and manage multiple Docker containers, making it straightforward to set up the application and its database.
- **PostgreSQL**: A robust relational database used to store Todo tasks, offering a more scalable and production-ready solution compared to SQLite.


## Project Structure
.
├── routers/
│   ├── auth.py            # Routes for user authentication
│   └── todos.py           # Routes for managing Todo tasks
│
├── static/
│   └── todo/
│       ├── css/           # CSS files for frontend styling
│       └── js/            # JavaScript files for frontend functionality
│
├── templates/             # HTML templates for rendering pages
│   ├── add-todo.html      # Template for the page to add a new task
│   ├── edit-todo.html     # Template for the page to edit a task
│   ├── home.html          # Main page displaying the list of tasks
│   ├── layout.html        # Base template for page structure
│   ├── login.html         # Template for the login page
│   ├── navbar.html        # Template for the navigation bar
│   └── register.html      # Template for the user registration page
│
├── .dockerignore          # Files and directories to ignore when building the Docker image
├── .gitignore             # Files and directories to ignore in the Git repository
├── database.py            # Database connection and setup
├── docker-compose.yml     # Docker Compose file to set up the app and PostgreSQL database
├── Dockerfile             # Dockerfile for creating the Docker image for the FastAPI app
├── main.py                # Main file to run the FastAPI application
├── models.py              # Database models for SQLAlchemy
├── PostgreSQLScript.sql   # SQL script for initializing the PostgreSQL database
├── README.md              # Project documentation
└── requirements.txt       # List of Python dependencies required for the project


## Running the Project

Prerequisites

- **Docker**

Steps to Run

1. Clone the repository:

`https://github.com/yaroslavyvk/Dockerization.git`


2.	Build and start the Docker containers:

`docker-compose up -d`

This command will build the Docker image for the FastAPI app and start both the app and the PostgreSQL database containers. The database will be created in a volume, and the necessary tables will be set up automatically.

3.	Access the API:

The FastAPI application will be running at `http://localhost:8080/auth/`

4.	API Documentation:

You can access the automatically generated API documentation by visiting:
•	Swagger UI: `http://localhost:8080/docs`
•	ReDoc: `http://localhost:8080/redoc`

## Conclusion

This project demonstrates the use of FastAPI for building a simple Todo application, leveraging Docker for containerization and PostgreSQL for database management. The decision to use PostgreSQL instead of SQLite introduces a practical example of managing multi-container Docker environments, highlighting how to establish connections between services in a scalable way.



