pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git branch: 'master', url: 'https://github.com/javieralmeida30/TestingProject.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -out=tfplan'
      }
    }

    stage('Terraform Apply') {
      steps {
        withAWS(credentials: 'AKIAY75G2LMGDJWYYMMZ', region: 'us-east-2') {
          sh 'terraform apply tfplan'
        }
      }
    }
  }
}

