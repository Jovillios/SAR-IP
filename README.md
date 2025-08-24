# SAR-IP: Synthetic Aperture Radar Image Processing

A comprehensive project for Synthetic Aperture Radar (SAR) image processing, featuring both Python implementations and FPGA-based Sobel edge detection.

## Overview

This project implements various SAR image processing techniques including edge detection using the Sobel operator, with both software (Python) and hardware (FPGA) implementations.

## Project Structure

```
SAR-IP/
├── python/                 # Python implementations
├── sobel/                  # Sobel edge detection implementations
├── SAR_IP_TPs_HW_2022.pdf # Project documentation and exercises
└── sobelSys22222.bit      # FPGA bitstream file
```

## Features

- **SAR Image Processing**: Various techniques for synthetic aperture radar image analysis
- **Sobel Edge Detection**: Implementation of the Sobel operator for edge detection
- **FPGA Implementation**: Hardware acceleration using FPGA
- **Python Tools**: Software-based processing and analysis tools

## Installation

### Python Dependencies

```bash
# Navigate to the python directory
cd python

# Install required packages (if requirements.txt exists)
pip install -r requirements.txt
```

### FPGA Setup

The project includes a `.bit` file for FPGA implementation. Load this file to your FPGA development board using the appropriate tools (Xilinx Vivado, etc.).

## Usage

### Python Implementation

```bash
cd python
# Run your SAR processing scripts
python your_script.py
```

### FPGA Implementation

1. Load the `sobelSys22222.bit` file to your FPGA
2. Configure the input/output interfaces
3. Process SAR images through the hardware accelerator

## Hardware Requirements

- FPGA development board (compatible with the provided bitstream)
- SAR image data
- Interface hardware for data transfer

## Software Requirements

- Python 3.7+
- Required Python packages (see python/requirements.txt if available)
- FPGA development tools (Xilinx Vivado recommended)

## Project Documentation

The `SAR_IP_TPs_HW_2022.pdf` file contains comprehensive documentation including:
- Theoretical background on SAR image processing
- Practical exercises and tutorials
- Implementation guidelines
- Performance analysis

## Contributing

This appears to be an academic project. If you have improvements or additional implementations, feel free to contribute.

## License

This project appears to be for educational/academic purposes. Please check the included documentation for specific licensing information.

## Contact

For questions about this project, please refer to the included documentation or contact the project maintainer.