# CrypTFlow2 in HawkEye

This README file describes how to reproduce the model communication cost propfiling results from CrypTFlow2 shown in Table 1, Table 3 and Figure 1 of the paper "HawkEye: Statically and Accurately Profiling the Communication Cost of Models in Multi-party Learning" (Usenix Security 2025).

## Required Packages
 - g++ (version >= 8)
 - cmake
 - make
 - libgmp-dev
 - libmpfr-dev
 - libssl-dev  
 - SEAL 3.3.2
 - Eigen 3.3

SEAL and Eigen are included in `extern/` and are automatically compiled and installed if not found. The other packages can be installed directly using `sudo apt-get install <package>` on Linux.

## Build the environment

```
cd SCI
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=./install .. [-DBUILD_TESTS=ON] [-DBUILD_NETWORKS=ON] [-DNO_REVEAL_OUTPUT=ON]
cmake --build . --target install --parallel
```

When running `cmake -DCMAKE_INSTALL_PREFIX=./install .. [-DBUILD_TESTS=ON] [-DBUILD_NETWORKS=ON] [-DNO_REVEAL_OUTPUT=ON]', if you face the following error, you can resolve it by adding '#include <mutex>' in SCI/extern/SEAL/native/src/seal/util/locks.h
```
CMake Error at src/LinearHE/CMakeLists.txt:18 (find_package):
  Could not find a package configuration file provided by "SEAL" (requested
  version 3.3.2) with any of the following names:

    SEALConfig.cmake
    seal-config.cmake

  Add the installation prefix of "SEAL" to CMAKE_PREFIX_PATH or set
  "SEAL_DIR" to a directory containing one of the above files.  If "SEAL"
  provides a separate development package or SDK, be sure it has been
  installed.
```

## Compile models and run profiling processes
After runningthe following commands, the end of `log_modelname_server.txt` would contain the communication size, communication round and running time results from CrypTFlow2 shown in Table 1, Table 3 and Figure 1 of the paper "HawkEye: Statically and Accurately Profiling the Communication Cost of Models in Multi-party Learning" (Usenix Security 2025).
```
cd EzPC-HawkEye/Athos
cd build_dir
cmake --log-level=ERROR .
cmake --build . --parallel
chmod +x run_hawkeye_experiments.sh
./run_hawkeye_experiments.sh
```
The command './run_hawkeye_experiments.sh' might take more than 4 hours. You can run 'nohup ./run_hawkeye_experiments.sh &' rather than './run_hawkeye_experiments.sh' to run the experiment in.the background.