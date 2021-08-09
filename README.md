[![CircleCI](https://circleci.com/gh/VamsiChaitanya50/OperationalizeMachineLearningAPI/tree/master.svg?style=svg)](https://circleci.com/gh/VamsiChaitanya50/OperationalizeMachineLearningAPI/tree/master)

# sklearn_kubernetes_udacity

## Repository Overview

This repository contains code to containerize a machine learning, Python application. It uses a pre-trained scikit-learn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The data initially taken from Kaggle, the _[data source site](https://www.kaggle.com/c/boston-housing)._

_[app.py](app.py)_ serves out predictions about housing prices through API calls.

Instructions for running the app using Docker and Kubernetes are listed below.

## Prerequisite

Make sure to have

- [Docker](https://docs.docker.com/get-docker/) installed
- [Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed
- [DockerHub](https://hub.docker.com/) account
- [Circleci](https://circleci.com/) account
- [minikube](https://minikube.sigs.k8s.io/docs/start/) installed
- [hadolint](https://github.com/hadolint/hadolint) installed

## Clone the repository

- > git clone git@github.com:VamsiChaitanya50/OperationalizeMachineLearningAPI.git
- > cd sklearn_kubernetes_udacity

## Setup the Environment

- Create virtual enviroment by
  > python3.7 -m venv ~/.devops
- Activate the venv
  > make setup
- Install dependencies
  > make install

## Running with Docker

Check for linting error

> make lint

To build the image and run the Docker container at port 8000:

> ./run_docker.sh

To check if it is running, open browser and type

> localhost:8000

Open new terminal and type

> ./make_prediction.sh

Output should be something similar to the _[file](output_txt_files/docker_out.txt)_

## Running with kubernetes

- Upload the image built with docker to _[dockerhub](https://hub.docker.com/r/rajxxx/houserent)_
  > ./upload_docker.sh
- start minikube
  > minikube start
- Run the kubernetes script
  > ./run_kubernetes.sh
- Test the output by running make_pridiction script to other tab
  > ./make_prediction.sh
- The output should be something similar to the _[file](output_txt_files/kubernetes_out.txt)._

## Project Files Structure

- All the source code files are under the root of this repository.

  - [app.py](app.py)
  - [requirements.txt](requirements.txt)
  - [Makefile](Makefile)
  - [Dockerfile](Dockerfile)

- All the helper scripts are also under the root of this repository.

  - [run_docker.sh](run_docker.sh)
  - [run_kubernetes.sh](run_kubernetes.sh)
  - [upload_docker.sh](upload_docker.sh)
  - [make_prediction.sh](make_prediction.sh)

- The trained model files are under _[model_data/.](model_data/)_

- The CircleCI configuration is under _[.circleci](.circleci/config.yml)_

- link to my dockerhub with the image pushed:
  > https://hub.docker.com/r/rajxxx/houserent
