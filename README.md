
# GCC Online Builder [![Travis CI Build Status](https://travis-ci.org/KSXGitHub/gcc-online-builder.svg?branch=master)](https://travis-ci.org/KSXGitHub/gcc-online-builder) [![Circle CI Build Status](https://circleci.com/gh/KSXGitHub/gcc-online-builder.svg)](https://circleci.com/gh/KSXGitHub/gcc-online-builder)

This repo does not contains GCC source code but contains some scripts to download and build GCC

## Main files and their functionalities

 * `/environment.sh`: (Usage: `source ./environment.sh`)
  - Set up environment variables
  - Create necessary directories

 * `/download.sh`:
  - Download gcc from mirror

 * `/prerequisites.sh`:
  - Install required prerequisites

 * `/build.sh`:
  - Configure GCC objects from source directory
  - Build GCC from object directory

 * `/all-scripts.sh`:
  - Executes the 3 above

 * `/clean-archive.sh`:
  - Delete GCC archive file
  - Delete GCC source directory

 * `/clean-output`:
  - Delete log files
  - Delete object files

## Usage

### In Continuous Integration

Just log in and start the build!

### In your own machine

#### 1. Install multilib

For example: *Ubuntu*
```bash
sudo apt-get update -y
sudo apt-get install -y gcc-multilib g++-multilib
```

#### 2. And here we go

```bash
cd /path/to/repo/gcc-online-builder # If you wasn't there
(
    source ./environment.sh
    ./all-scripts.sh
)
```
