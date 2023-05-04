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
```
## Modules files
```
    *.json : Schemas of the dashboard and the sql database
    variables.tf : Contains environnements variables of each modules
    module_name.tf : Main file of the modules
```

## Modules deployment order
```
    Iam -> Storage -> Table (depends on Storage) -> dashboard (depends of every modules)
```

## How to deploy
```
    In the src folder : npm install
    In the root folder : terraform init
                         terraform apply
```

## How to destroy the project
```
   terraform destroy
```

## How to use it
```
   After deploying the project, the cloud function api can be used.
   When the function is tested in GCP, datas are pushed in the BigQuery Database
   The cloud function archive is located in the bucket as a zip file
```

## Naming Convention
```
   All environnements variables values are in kebab-case
   All functions and envrionnements variables names are in snake_case
```