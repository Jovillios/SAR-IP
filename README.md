# SAR-IP: Synthetic Aperture Radar Image Processing

A comprehensive project for Synthetic Aperture Radar (SAR) image processing, featuring both Jupyter notebook implementations and FPGA-based Sobel edge detection using Xilinx Vivado.

## Overview

This project implements various SAR image processing techniques including edge detection using the Sobel operator, with both software (Jupyter notebook) and hardware (FPGA) implementations. The project appears to be part of an academic course on SAR image processing.

## Project Structure

```
SAR-IP/
├── python/                                    # Python/Jupyter implementations
│   ├── SAR Info Image Processor-student.ipynb # Main SAR processing notebook
│   └── dancing-spider.jpeg                   # Sample image for processing
├── sobel/                                     # FPGA Sobel edge detection project
│   ├── sobel.xpr                             # Xilinx Vivado project file
│   ├── sobel.srcs/                           # Source files directory
│   ├── sobel.sim/                            # Simulation files
│   ├── sobel.runs/                           # Implementation runs
│   ├── sobel.hw/                             # Hardware platform files
│   ├── sources/                              # Additional source files
│   ├── ip_upgrade.log                        # IP upgrade log
│   └── tb_operativeUnit_behav.wcfg          # Testbench configuration
├── SAR_IP_TPs_HW_2022.pdf                   # Course exercises and documentation
├── sobelSys22222.bit                        # FPGA bitstream file
└── README.md                                 # This file
```

## Features

- **SAR Image Processing**: Jupyter notebook implementation for synthetic aperture radar image analysis
- **Sobel Edge Detection**: FPGA implementation using Xilinx Vivado
- **Hardware Acceleration**: Complete FPGA project with bitstream
- **Course Materials**: Comprehensive documentation and exercises

## Software Implementation

### Jupyter Notebook
The main implementation is in `SAR Info Image Processor-student.ipynb` which contains:
- SAR image processing algorithms
- Image analysis techniques
- Processing examples using the included sample image

### Requirements
- Python 3.7+
- Jupyter Notebook
- Common data science libraries (NumPy, Matplotlib, etc.)

## Hardware Implementation

### FPGA Project
The `sobel/` directory contains a complete Xilinx Vivado project for Sobel edge detection:
- **Project File**: `sobel.xpr` - Open with Xilinx Vivado
- **Source Files**: Located in `sobel.srcs/`
- **Simulation**: Testbench and simulation files in `sobel.sim/`
- **Implementation**: Generated runs in `sobel.runs/`

### FPGA Setup
1. **Open Project**: Use Xilinx Vivado to open `sobel.xpr`
2. **Synthesize**: Run synthesis and implementation
3. **Generate Bitstream**: Create new bitstream or use provided `sobelSys22222.bit`
4. **Program Device**: Load bitstream to your FPGA development board

## Installation

### Software (Jupyter)
```bash
# Navigate to the python directory
cd python

# Install Jupyter and common data science packages
pip install jupyter numpy matplotlib pillow
```

### Hardware (FPGA)
- Install Xilinx Vivado (recommended version 2022.1 or later)
- Open the `sobel.xpr` project file
- Ensure you have a compatible FPGA development board

## Usage

### Software Implementation
1. **Start Jupyter**:
   ```bash
   cd python
   jupyter notebook
   ```

2. **Open the notebook**: `SAR Info Image Processor-student.ipynb`
3. **Run cells** to process SAR images and analyze results

### Hardware Implementation
1. **Open Vivado Project**: `sobel/sobel.xpr`
2. **Run Synthesis and Implementation**
3. **Generate Bitstream**
4. **Program FPGA** with the generated bitstream

## Course Documentation

The `SAR_IP_TPs_HW_2022.pdf` file contains:
- Theoretical background on SAR image processing
- Practical exercises and tutorials
- Hardware implementation guidelines
- Performance analysis requirements

## Hardware Requirements

- **FPGA Development Board**: Compatible with the provided bitstream
- **Xilinx Vivado**: For project development and bitstream generation
- **Interface Hardware**: For data transfer between FPGA and host

## Software Requirements

- **Python 3.7+**: For Jupyter notebook execution
- **Jupyter Notebook**: For interactive development
- **Data Science Libraries**: NumPy, Matplotlib, etc.

## Contributing

This appears to be an academic project. If you have improvements or additional implementations, feel free to contribute.

## License

This project appears to be for educational/academic purposes. Please check the included documentation for specific licensing information.

## Contact

For questions about this project, please refer to the included course documentation or contact the project maintainer.

## Notes

- The FPGA project is specifically designed for Xilinx FPGAs
- The Jupyter notebook contains student exercises and may require completion
- Sample images are provided for testing the processing algorithms