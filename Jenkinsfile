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
                        bat 'snyk auth $SNYK_TOKEN'
                        bat 'snyk test'
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
