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
                sh 'echo "Build stage here..."'
            }
        }

        stage('Snyk Test') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'snyk-api-token', variable: 'SNYK_TOKEN')]) {
                        sh 'snyk auth $SNYK_TOKEN'
                        sh 'snyk test'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                // Optional deployment logic
                sh 'echo "Deploying..."'
            }
        }
    }
}
