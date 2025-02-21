# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Install system dependencies for OpenCV
RUN apt-get update && apt-get install -y \
    libsm6 libxext6 libxrender-dev libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/*

# Copy requirement file (Optional if using pip)
COPY requirements.txt .

# Install OpenCV via pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files
COPY src/ /app/

# Set display environment for GUI
ENV DISPLAY=:0
ENV QT_X11_NO_MITSHM=1

# Run the application
CMD ["bash"]
