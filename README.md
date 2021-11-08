[![CircleCI](https://circleci.com/gh/SudKul/nd9991-p4/tree/main.svg?style=svg)](https://circleci.com/gh/SudKul/nd9991-p4/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

Files present in thiis repo are:
```bash
.
├── .circleci
│   └── config.yml      # Project TODO
├── Dockerfile          # Project TODO
├── LICENSE
├── Makefile       
├── README.md           # Project TODO
├── app.py              # Project TODO
├── make_prediction.sh  
├── model_data
│   ├── boston_housing_prediction.joblib
│   └── housing.csv
├── output_txt_files    # Project TODO
│   ├── docker_out.txt
│   └── kubernetes_out.txt
├── requirements.txt
├── run_docker.sh       # Project TODO
├── run_kubernetes.sh   # Project TODO
└── upload_docker.sh    # Project TODO
```

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
## Project Steps 
#### Task 0: Test the App Locally
```bash
# Check/Update the requirements.txt
# Install the necessary dependencies
make install
python app.py
```


#### Task 1: Complete the Dockerfile
```bash
# Update the Dockerfile
make lint
```


#### Task 2: Run a Container & Make a Prediction
```bash
# Update the run_docker.sh
chmod +x run_docker.sh
./run_docker.sh
docker exec -it [container-name] bash
# Check the ports in the make_prediction.sh file
chmod +x make_prediction.sh
./make_prediction.sh
```

#### Task 3: Improve Logging & Save Output
Save the output to the `nd9991-p4/output_txt_files/docker_out.txt` file. 


#### Task 4: Upload the Docker Image
```bash
# Complete the upload_docker.sh file
# Create a repo in Docker hub
docker login
./upload_docker.sh
```

#### [Optional] Task 5: Configure Kubernetes to Run Locally

#### Task 6: Deploy with Kubernetes and Save Output Logs
```bash
# Start k8s in Docker Desktop > Preferences
kubectl get nodes
kubectl delete pods --all
# Finish the run_kuberenets.sh file
./run_kuberenets.sh
# Open another terminal tab
./make_prediction.sh
# Copy the result of the ./run_kuberenets.sh to the nd9991-p4/output_txt_files/kubernetes_out.txt file
```

#### Task 7: [Important] Delete Cluster
```bash
kubectl delete pods --all
# You can also reset the k8s cluster from the Docker Desktop preferences
```

#### Task 8: CircleCI Integration
```bash
# Create nd9991-p4/.circleci/config.yml file
# Use the content from https://github.com/udacity/DevOps_Microservices/blob/master/Lesson-2-Docker-format-containers/class-demos/.circleci/config.yml file
# Add the project repo in the CircleCI portal
# Push the code
# Check the badge
```