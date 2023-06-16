def awsCredentials1 = 'AWS_ACCESS_KEY_ID'
def awsCredentials2 = 'AWS_SECRET_ACCESS_KEY'

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
        branch 'master'
      }
      steps {
        script {
          withAWS(credentials: awsCredentials1, region: 'us-east-2') {
            sh 'terraform apply tfplan'
          }

          withAWS(credentials: awsCredentials2, region: 'us-east-2') {
            sh 'terraform apply tfplan'
          }
        }
      }
    }
  }
}
