pipeline {
  agent any

  environment {
    AWS_REGION_DEFAULT = 'us-east-2'
    AWS_ACCESS_KEY_DEFAULT = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_KEY_DEFAULT = credentials('AWS_SECRET_ACCESS_KEY')
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
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
      when {
        branch 'master'
      }
      steps {
        withAWS(region: 'us-east-2') {
          sh 'terraform apply tfplan'
        }
      }
    }
  }
}
