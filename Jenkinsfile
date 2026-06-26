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
                sshagent(credentials: ['ssh-key-ansible-vm']) {
                  sh '''
                    ssh -o StrictHostKeyChecking=no idir@172.26.25.5 \
                      "sudo ansible --version && ansible -i /home/ansible/inventory.yaml localhost -m ping"
                  '''
                }
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
