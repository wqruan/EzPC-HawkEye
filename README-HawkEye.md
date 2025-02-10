# CrypTFlow2 in HawkEye

This README file describes how to reproduce the model communication cost propfiling results from CrypTFlow2 shown in Table 1, Table 3 and Figure 1 of the paper "HawkEye: Statically and Accurately Profiling the Communication Cost of Models in Multi-party Learning" (Usenix Security 2025).

## Build the environment

```
cd SCI
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=./install .. [-DBUILD_TESTS=ON] [-DBUILD_NETWORKS=ON] [-DNO_REVEAL_OUTPUT=ON]
cmake --build . --target install --parallel
```

## Compile models and run profiling processes
After runningthe following commands, the end of `log_modelname_server.txt` would contain the communication size, communication round and running time results from CrypTFlow2 shown in Table 1, Table 3 and Figure 1 of the paper "HawkEye: Statically and Accurately Profiling the Communication Cost of Models in Multi-party Learning" (Usenix Security 2025).
```
cd Athos
cd build_dir
cmake --log-level=ERROR .
cmake --build . --parallel
chmod +x run_hawkeye_experiments.sh
./run_hawkeye_experiments.sh
```
The command './run_hawkeye_experiments.sh' might take more than 4 hours. You can run 'nohup ./run_hawkeye_experiments.sh &' rather than './run_hawkeye_experiments.sh' to run the experiment in.the background.