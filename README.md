# WasmDB Backend ![](https://github.com/ChristianMoesl/wasmdb-backend/workflows/CI/badge.svg)

WasmDB is a project of the Programming Language Group at the Department of Computer Sciences of Purdue University in USA Indiana.

This repository contains the server side code of the web application. WasmDB compiles SQL queries into highly specialised WebAssembly code to compute the results for a given CSV dataset with close to native performance.


## Setup

### Build from source
1. Install the [SBT](http://www.scala-sbt.org/) build tool:
    
    If you are using OS X and [Homebrew](http://brew.sh), run `brew install sbt`.

    For other platforms, follow the instructions on the [SBT](http://www.scala-sbt.org/) website.

2. Clone this repo and run the tests:
  * `git clone https://github.com/ChristianMoesl/wasmdb-backend`
  * `cd wasmdb-backend`
  * `sbt test`


### Run with Docker

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop)

2. Run the prebuilt image: 
  * `docker run -it christianmoesl/wasmdb-backend`
  * `sbt test`


### Deploy with Docker on AWS Lambda
Uploads the program code as `.zip` file to `s3://wasmdb/assembly.zip` and updates a AWS lambda called `wasmdb` with this code. The S3 Bucket has to be created in advance!

 1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop)

 2. Run the prebuilt deploy image:
   ```
   docker run -e AWS_ACCESS_KEY_ID=<your-aws-key> \
                   -e AWS_SECRET_ACCESS_KEY=<your-aws-secret> \
                   -e AWS_DEFAULT_REGION=<your-aws-region> deploy
   ```
 
## Project Parts:
+ [Lightweight Module Staging (LMS)](https://github.com/TiarkRompf/lms-clean) 
+ [WebAssembly DSL for LMS](https://github.com/ChristianMoesl/lms-wasm)
+ [SQL Query Compiler](https://github.com/ChristianMoesl/wasmdb-backend)
+ [Query Executor Web App](https://github.com/ChristianMoesl/wasmdb)
