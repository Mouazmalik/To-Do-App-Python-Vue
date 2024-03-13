# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements file into the container at /usr/src/app/
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /usr/src/app/
COPY . .

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# Expose the port gunicorn will run on
EXPOSE 8000
