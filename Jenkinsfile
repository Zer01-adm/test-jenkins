// /* Requires the Docker Pipeline plugin */
// pipeline {
//     agent { docker { image 'node:24.18.0-alpine3.24' } }

//     environment {
//         IMAGE_NAME = "hello-world"
//         IMAGE_TAG = "latest"
//         K3S_VM = "idir@172.26.25.5"
//     }


//     stages {
//         stage('Checkout') {
//             steps {
//                 git 'https://github.com/Zer01-adm/test-jenkins'
//             }
//         }

//         stage('Build Docker Image') {
//             steps {
//                 sh 'docker build -t $IMAGE_NAME:$IMAGE_TAG .'
//             }
//         }

//         stage('Save and Transfer Image') {
//             steps {
//                 sh """
//                     docker save $IMAGE_NAME:$IMAGE_TAG | bzip2 > $IMAGE_NAME.tar.bz2
//                     scp $IMAGE_NAME.tar.bz2 $K3S_VM:/tmp/
//                 """
//             }
//         }

//         stage('Load Image on K3S') {
//             steps {
//                 sshagent(['K3S-ssh-credentials']) {
//                     sh """
//                         ssh $K3S_VM 'bunzip2 -c /tmp/$IMAGE_NAME.tar.bz2 | docker load'
//                     """
//                 }
//             }
//         }

//         stage('Deploy to K3S') {
//             steps {
//                 sshagent(['K3S-ssh-credentials']) {
//                     sh """
//                         ssh $K3S_VM 'kubectl set image deployment/hello-world hello-world=$IMAGE_NAME:$IMAGE_TAG --record || kubectl apply -f deployment.yaml'
//                     """
//                 }
//             }
//         }
//     }
// }


pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
                sh 'svn --version'
            }
        }
    }
}