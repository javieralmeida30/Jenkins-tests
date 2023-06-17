pipeline {
  agent any

  environment {
    AWS_REGION_DEFAULT = 'us-east-2'
    AWS_ACCESS_KEY_DEFAULT = sh(script: 'terraform output -raw aws_access_key', returnStdout: true).trim()
    AWS_SECRET_ACCESS_KEY_DEFAULT = sh(script: 'terraform output -raw aws_secret_key', returnStdout: true).trim()
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Terraform Init') {
      steps {
        dir('terraform') {
          sh 'terraform init'
        }
      }
    }

    stage('Terraform Plan') {
      steps {
        dir('terraform') {
          sh 'terraform plan -out=tfplan'
        }
      }
    }

    stage('Terraform Apply') {
      when {
        branch 'master'
      }
      steps {
        dir('terraform') {
          withAWS(region: 'us-east-2') {
            sh 'terraform apply tfplan'
          }
        }
      }
    }
  }
}
