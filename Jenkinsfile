pipeline{
    agent any 

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_REGION = 'us-east-1'
    }

    options {
        ansiColor('xterm')
    }

    stages {
        stage('Checkout'){
            steps {
                checkout scm 
            }
        }

        stage ('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terrafrom Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Format') {
            steps {
                sh 'terraform fmt -check'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terrafrom plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            when {
                branch 'master'
            }
            steps {
                input message: "¿Aplicar los cambios?"
                sh 'terrafrom apply -auto-approve tfplan'
            }
        }
    }
}