cd src
nvcc -o main main.cu -lssl -lcrypto
./main
