pipeline {
    agent {
        node {
            label 'docker-agent-alpine'
        }
    }
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
                    sh 'docker push thanhtha/apache-test:v11'
                }
            }
        }

        stage ('Email') {
            steps {
                mail bcc: '', body: 'Build Success', cc: '', from: '', replyTo: '', subject: 'Build Success', to: 'tha.lt1199@sinhvien.hoasen.edu.vn'
            }
        }
    }
}