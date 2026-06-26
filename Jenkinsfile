pipeline {
  agent { label 'mynode' }

  stages {
    stage('Check docker') {
      steps {
        sh 'whoami'
        sh 'hostname'
        sh 'docker version'
      }
    }

    stage('Build image') {
      steps {
        sh 'docker build -t test-jenkins:latest .'
      }
    }
  }
}