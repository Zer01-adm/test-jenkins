pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Build en cours..."'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Tests OK"'
            }
        }

        stage('view') {
            steps {
                sh 'ls'
            }
        }
    }

    post {
        success {
            echo 'Pipeline terminé avec succès'
        }
        failure {
            echo 'Pipeline en échec'
        }
    }
}
