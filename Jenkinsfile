pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pull code from your Git repo
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Run your build commands (example: npm install, mvn install)
                bat 'echo "Build stage here..."'
            }
        }

        stage('Snyk Test') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'snyk-api-token', variable: 'SNYK_TOKEN')]) {
                        bat 'C:\\Users\\affan\\AppData\\Roaming\\npm\\snyk.cmd auth $SNYK_TOKEN'
                        bat 'C:\\Users\\affan\\AppData\\Roaming\\npm\\snyk.cmd monitor --all-projects'
                        bat 'C:\\Users\\affan\\AppData\\Roaming\\npm\\snyk.cmd test --all-projects'
                        
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                // Optional deployment logic
                bat 'echo "Deploying..."'
            }
        }
    }
}
