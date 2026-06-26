pipeline {
  agent none

  stages {
    stage('Build image') {
      agent { label 'docker' }
      steps {
        sh 'whoami'
        sh 'docker version'
        sh 'docker build -t test-jenkins:latest .'
      }
    }

    stage('Check ansible') {
      agent { label 'ansible' }
      steps {
        sh 'whoami'
        sh 'ansible --version'
        sh 'ansible-playbook --version'
      }
    }
  }
}