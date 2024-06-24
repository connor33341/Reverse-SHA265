cmake_minimum_required(VERSION 3.18)
project(CudaBruteForceSHA256)

# Enable CUDA support
enable_language(CUDA)

# Set the path to the source file
set(SOURCE_DIR ${PROJECT_SOURCE_DIR}/src)
set(SOURCE_FILE ${SOURCE_DIR}/main.cu)

# Find OpenSSL
find_package(OpenSSL REQUIRED)

# Create an executable target
add_executable(cuda_bruteforce_sha256 ${SOURCE_FILE})

# Link against OpenSSL libraries
target_link_libraries(cuda_bruteforce_sha256 OpenSSL::SSL OpenSSL::Crypto)
