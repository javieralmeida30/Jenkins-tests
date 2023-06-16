def awsCredentials = 'AKIAY75G2LMGDJWYYMMZ' 

pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Terraform Init') {
      steps {
        script {
          sh 'terraform init'
        }
      }
    }

    stage('Terraform Plan') {
      steps {
        script {
          sh 'terraform plan -out=tfplan'
        }
      }
    }

    stage('Terraform Apply') {
      when {
        branch 'master' // Cambia esto según las ramas que desees incluir
      }
      steps {
        script {
          withAWS(credentials: awsCredentials, region: 'us-east-2') {
            sh 'terraform apply tfplan'
          }
        }
      }
    }
  }
}

