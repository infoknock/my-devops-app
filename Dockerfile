# 1. Start with an official lightweight Python image
FROM python:3.11-slim

# 2. Set the working folder inside the container
WORKDIR /app

# 3. Copy the dependency list and install Flask
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy your application code into the container
COPY . .

# 5. Tell Docker the app listens on port 5000
EXPOSE 5000

# 6. Command to run when the container starts
CMD ["python", "app.py"]
