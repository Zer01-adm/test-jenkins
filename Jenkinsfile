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
                  sh 'ls /usr/bin'
            }
        }

        // stage('Test Ansible') {
        //     steps {
        //         withCredentials([usernamePassword(credentialsId: 'ssh-pass-ansible-vm', usernameVariable: 'SSH_USER', passwordVariable: 'SSH_PASS')]) {
        //           sh '''
        //             sshpass -p "$SSH_PASS" ssh -o StrictHostKeyChecking=no $SSH_USER@172.26.25.5 \
        //               "ansible --version && ansible -i /home/ansible/inventory.yaml localhost -m ping"
        //           '''
        //         }
        //     }
        // }
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
