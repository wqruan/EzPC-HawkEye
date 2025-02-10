# CrypTFlow2 in HawkEye

This README file describes how to reproduce the model communication cost propfiling results from CrypTFlow2 shown in Table 1 and Figure 1 of the paper "HawkEye: Statically and Accurately Profiling the Communication Cost of Models in Multi-party Learning" (Usenix Security 2025).

## Build the environment

```
cd SCI
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=./install .. [-DBUILD_TESTS=ON] [-DBUILD_NETWORKS=ON] [-DNO_REVEAL_OUTPUT=ON]
cmake --build . --target install --parallel
```

## Compile models

```
cd Athos
cd build_dir
cmake --log-level=ERROR .
cmake --build . --parallel
```