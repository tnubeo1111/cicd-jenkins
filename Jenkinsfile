pipeline {
    agent any
    stages {
        stage ('clone') {
            steps {
                git 'https://github.com/tnubeo1111/cicd-jenkins.git'
            }
        }

        stage ('Build images docker') {
            steps{
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t thanhtha/apache-test:v11 .'
                }
            }
        }
    }
}