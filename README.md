# Terraform / GCP Infrastructure as Code by Yanny Ouzid

## Project Tree
```
    ├── .bash_logout
    ├── .bashrc
    ├── .gitignore
    ├── .profile
    ├── README-cloudshell.txt
    ├── main.tf
    ├── modules
    │   ├── dashboard
    │   │   ├── dashboard.json
    │   │   └── dashboard.tf
    │   ├── iam
    │   │   ├── iam.tf
    │   │   └── variables.tf
    │   ├── storage
    │   │   ├── storage.tf
    │   │   └── variables.tf
    │   └── table
    │       ├── schema.json
    │       ├── table.tf
    │       └── variables.tf
    ├── src
    │   ├── index.js
    │   └── package.json
    └── variables.tf
```

## Folders Contents
```
    src : Contains the js api files
    modules : Contains each module used for the project
```
## Module used
```
    Iam (iam folder) : Create a new user with an admin role
    Cloud Function (storage folder): Create the api functions
    Bucket (storage folder): Create a bucket to store the cloud functions
    Bigquery (table folder): Create the dataset and the datatable of the project
    Monitoring dashboard (dashboard folder) : Create the dashboard of the project

## How to deploy
```
    In the src folder : npm install
    In the root folder : terraform init
                         terraform apply

## How to destroy the project
```
   terraform destroy

    
```

