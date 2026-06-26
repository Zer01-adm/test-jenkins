pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Test Ansible') {
            steps {
                ansiblePlaybook(
                    installation: 'ansible',
                    inventory: 'ansible/inventory.yaml',
                    playbook: 'ansible/playbook.yaml'
                )
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
