# Use the official Python 3.12 image from Docker Hub as the base image. This image is based on Debian Bullseye.
FROM python:3.12-bullseye

# Set the working directory inside the container to /myapp. If the directory does not exist, it will be created.
WORKDIR /myapp

# Copy everything from the current directory on the host to the /myapp directory inside the container.
COPY . /myapp/

# Run the pip package manager to install the Python dependencies defined in the requirements.txt file. 
# This is done within the container.
RUN pip install -r requirements.txt

# Specify the default executable for the container. Here, it's set to "python", 
# which means that when the container starts, it will run a Python interpreter.
ENTRYPOINT [ "python" ]

# Provide the default command to be passed to the entrypoint, which in this case is the Python script named main.py.
# CMD is only used if no commands are specified when the container is started. If any commands are given, they override CMD.
CMD [ "main.py" ]