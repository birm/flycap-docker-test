# Use the official Ubuntu 18.04 image
FROM ubuntu:18.04

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install prerequisites
RUN apt-get update && \
    apt-get install -y \
    software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update && \
    apt-get install -y \
    python3.6 \
    python3.6-venv \
    python3.6-dev \
    python3-pip \
    && apt-get clean

RUN apt-get install -y libraw1394-11 libavcodec57 libavformat57        \
        libswscale4 libswresample2 libavutil55 libgtkmm-2.4-1v5              \
        libglademm-2.4-1v5 libgtkglextmm-x11-1.2-0v5 libgtkmm-2.4-dev        \
        libglademm-2.4-dev libgtkglextmm-x11-1.2-dev libusb-1.0-0

ADD ./flycapture2-2.13.3.31-amd64/ /deps

WORKDIR /deps

RUN yes| sh install_flycapture.sh

# Upgrade pip to the latest version
RUN python3.6 -m pip install --upgrade pip

# Install numpy
RUN python3.6 -m pip install numpy

ADD ./PyCapture2-2.13.31/ /src
run ls
WORKDIR /src

RUN python3.6 setup.py install 

workdir /base
add ./LightTest.py /base
CMD python3.6 LightTest.py
