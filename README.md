# SHA-512/256 Hardware Accelerator on Zynq UltraScale+ MPSoC

A high-performance SHA-512/256 cryptographic hash hardware accelerator implementation on Xilinx Zynq UltraScale+ MPSoC using Vitis HLS with 4-IP AXI MCDMA integration on the Ultra96-V2 development board.

## Overview

This project implements a SHA-512/256 cryptographic hash function as a specialized hardware accelerator on the Zynq UltraScale+ platform. The design combines High-Level Synthesis (HLS) for rapid prototyping with direct hardware implementation, leveraging the AXI MultiChannel Direct Memory Access (MCDMA) controller for efficient data movement between the processor and the accelerator.

### Key Features

- **SHA-512/256 Implementation**: Cryptographically secure hash function producing 256-bit digests
- **Hardware Acceleration**: Dedicated FPGA fabric for high-throughput hashing operations
- **Multi-Channel DMA**: 4-IP AXI MCDMA for optimized data transfers
- **Vitis HLS**: C/C++ to hardware synthesis for rapid development and optimization
- **Ultra96-V2 Platform**: ARM Cortex-A53 + FPGA heterogeneous computing platform
- **Efficient Data Movement**: Direct memory access minimizes CPU intervention

## Hardware Architecture

### Platform: Zynq UltraScale+ MPSoC

The Zynq UltraScale+ combines:
- **Processing System (PS)**: Dual Cortex-A53 CPU cores with cache hierarchy
- **Programmable Logic (PL)**: FPGA fabric for custom hardware acceleration

### Key Components

1. **SHA-512/256 Accelerator Core**
   - Implemented via Vitis HLS
   - Optimized for throughput and latency
   - Fully pipelined architecture

2. **AXI MCDMA Controller**
   - 4 independent DMA channels
   - Efficient host-to-device and device-to-host transfers
   - Reduced CPU overhead

3. **AXI Interconnect**
   - PS-PL communication bridge
   - AXI4 protocol compliance

## Technology Stack

### Language Composition

- **VHDL**: 37.8% - Low-level hardware descriptions and testbenches
- **Verilog**: 26.6% - Hardware implementation and RTL design
- **C**: 21.0% - Software driver and application code
- **C++**: 6.5% - HLS source code and algorithms
- **SystemVerilog**: 1.9% - Advanced verification testbenches
- **Ada**: 4.1% - Legacy hardware descriptions
- **Other**: 2.1% - Configuration and documentation files

### Tools & Environment

- **Xilinx Vivado Design Suite**: FPGA design and implementation
- **Xilinx Vitis HLS**: High-Level Synthesis for accelerator
- **Xilinx Vitis Unified IDE**: Software development
- **Petalinux**: Embedded Linux for Zynq
- **Ultra96-V2**: Development and target platform

## Directory Structure

```
Zynq-SHA-512_256-MCDMA-HLS-Application/
├── README.md                 # This file
├── docs/                     # Documentation
│   ├── architecture.md       # Detailed architecture documentation
│   ├── design_specs.md       # Design specifications
│   └── performance.md        # Performance metrics and benchmarks
├── hls/                      # Vitis HLS source code
│   ├── sha512_core.cpp       # SHA-512/256 core algorithm
│   ├── sha512_core.h         # Header files
│   └── testbench/            # HLS testbenches
├── hardware/                 # Vivado project files
│   ├── vivado/               # Vivado project directory
│   ├── ip_cores/             # Custom IP cores
│   └── constraints/          # Timing and placement constraints
├── software/                 # ARM embedded software
│   ├── drivers/              # MCDMA and accelerator drivers
│   ├── apps/                 # Application code
│   └── petalinux/            # Petalinux project
├── simulation/               # Simulation and testbenches
│   ├── vhdl_tb/              # VHDL testbenches
│   ├── verilog_tb/           # Verilog testbenches
│   └── scripts/              # Simulation scripts
└── results/                  # Performance results and reports
    ├── benchmarks/           # Benchmark data
    └── reports/              # Synthesis/implementation reports
```

## Getting Started

### Prerequisites

- Xilinx Vivado Design Suite (2021.2 or later)
- Xilinx Vitis HLS (2021.2 or later)
- Petalinux Tools
- Ultra96-V2 development board
- Xilinx USB Platform Cable or equivalent JTAG adapter
- Linux development environment (Ubuntu 18.04/20.04 recommended)

### Installation & Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Nilesh1902/Zynq-SHA-512_256-MCDMA-HLS-Application.git
   cd Zynq-SHA-512_256-MCDMA-HLS-Application
   ```

2. **HLS Synthesis**
   ```bash
   cd hls/
   vivado_hls -f build_hls.tcl
   ```

3. **Generate Bitstream**
   ```bash
   cd ../hardware/vivado/
   vivado -mode batch -source build_project.tcl
   ```

4. **Build Petalinux**
   ```bash
   cd ../../software/petalinux/
   petalinux-build
   ```

5. **Program FPGA & Boot**
   - Program the generated bitstream to Ultra96-V2
   - Boot with compiled Petalinux image

## Performance Characteristics

### Expected Performance

- **Throughput**: Measured in GB/s for streaming hash operations
- **Latency**: Sub-microsecond latency for small message blocks
- **Resource Utilization**: Optimized LUT, BRAM, and DSP usage
- **Power Efficiency**: Reduced CPU load through dedicated acceleration

*Detailed performance metrics available in `docs/performance.md`*

## Software API

### C Driver Interface

```c
// Initialize SHA-512/256 accelerator
int sha512_init(sha512_context_t *ctx);

// Update hash with data
int sha512_update(sha512_context_t *ctx, const uint8_t *data, size_t len);

// Finalize and get hash digest
int sha512_final(sha512_context_t *ctx, uint8_t *digest);

// DMA transfer control
int dma_transfer(uint32_t src, uint32_t dst, size_t length, int channel);
```

## Testing

### Unit Tests
```bash
cd software/
make test
```

### Simulation
```bash
cd simulation/
./run_sim.sh
```

### Hardware Validation
```bash
petalinux-boot --jtag --kernel --dtb --fpga
# Run test applications on target
```

## Documentation

Comprehensive documentation is available in the `docs/` directory:

- **Architecture**: System-level design and block diagrams
- **Design Specifications**: Detailed technical specifications
- **Performance Analysis**: Benchmarking and optimization results
- **Build Guide**: Step-by-step build and deployment instructions

## Contributing

Contributions are welcome! Please follow these guidelines:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Submit a pull request

## Performance Optimization Tips

- Tune HLS pragmas in `hls/sha512_core.cpp` for better pipelining
- Adjust MCDMA burst sizes based on memory bandwidth
- Profile using Vivado HLS analyzer for bottleneck identification
- Consider II (Initiation Interval) improvements through loop unrolling

## Troubleshooting

### Common Issues

**Issue: Bitstream generation fails**
- Verify Vivado version compatibility
- Check constraint file syntax in `hardware/constraints/`
- Review synthesis log for timing violations

**Issue: DMA transfers timeout**
- Verify MCDMA channel configuration
- Check memory alignment (typically 64-byte boundaries)
- Monitor DMA status registers

**Issue: Hash mismatch**
- Validate input data format
- Check endianness conversions
- Review test vectors against NIST specifications

## References

- [Xilinx Zynq UltraScale+ Technical Reference Manual](https://www.xilinx.com/)
- [NIST FIPS 180-4: Secure Hash Standard](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.180-4.pdf)
- [Ultra96-V2 Documentation](https://www.96boards.org/product/ultra96/)
- [Xilinx Vitis HLS User Guide](https://www.xilinx.com/)

## License

This project is provided under the [Specify Your License - e.g., MIT, Apache 2.0, GPL v3]. See LICENSE file for details.

## Authors

- **Nilesh1902** - Hardware Architecture & HLS Implementation

## Acknowledgments

- Xilinx for development tools and Zynq UltraScale+ platform
- 96Boards community for Ultra96-V2 resources
- NIST for SHA-512/256 specification

## Support & Contact

For issues, questions, or suggestions:

- Open an issue on [GitHub Issues](https://github.com/Nilesh1902/Zynq-SHA-512_256-MCDMA-HLS-Application/issues)
- Contact: [Your Contact Information]

---

**Last Updated**: June 2026

**Project Status**: Active Development
