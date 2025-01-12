PyCapture2 is a wrapper for FLIR Integrated Imaging Solutions' FlyCapture 2 library.

FLIR Integrated Imaging Solutions' website is located at https://www.ptgrey.com

The PyCapture2 python extension provides a common software interface to control and acquire images from FLIR USB 3.0, 
GigE, FireWire, and USB 2.0 cameras using the same API under Linux. 

--------------------------------------------------------------------------------------------------------------
Instructions on how to extract the PyCapture2 package and run the examples on Linux:

Linux 	
=========================================================================
*FlyCapture2 SDK must be first installed on the system before following the steps below to install the PyCapture2 module.*

1. To ensure the prerequisites are installed on the system, run the FlyCapture2 SDK installer that corresponds with
the PyCapture2 version number. For example, if installing PyCapture2 2.11.1, install the Flycapture2 SDK 2.11.1

2. Ensure that python2.7 is installed on the system. Note that python 2.7 should already be installed as part
of UBUNTU 16.04 distribution but the pip and setuptools modules may be missing.	For PyCapture2 versions after 2.11.3.361, NumPy will also need to be installed.
	
To install pip run in terminal:	
"sudo apt install python-pip"	
	
3. After pip is installed run:	
"sudo pip install setuptools cython numpy"	

4. To extract the PyCapture2-2.11.X.tar.gz package, double click on the package or alternatively, Open a new terminal and type "tar -xvf PyCapture2-2.11.11.tar.gz".  

5. Once the above are installed, you are now ready to install PyCapture2. cd into the directory where the package was extracted. 
"cd <directory of PyCapture2-2.11.11>" 
"sudo python setup.py install" 

This will compile and install the PyCapture2 module into the python directory 
For example: usr/local/lib/python2.7/dist-packages/PyCapture2-1.0-py2.7-linux-x86_64/egg

6. The examples can now be ran from the PyCapture2 directory by calling in the terminal
"python examples/python2/AsyncTriggerEx.py"

