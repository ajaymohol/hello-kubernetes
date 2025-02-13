# Use Python 3.9 as the base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the application file into the container
COPY app.py /app

# Install dependencies
RUN pip install fastapi uvicorn

# Run the application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]

