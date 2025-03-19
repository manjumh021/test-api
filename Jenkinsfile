pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/manjumh021/test-api.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("my-flask-app")
                }
            }
        }

        stage('Run Container and Test') {
            steps {
                sh './test_api.sh'
            }
        }

        stage('Clean Up') {
            steps {
                sh 'docker rmi -f my-flask-app'
                cleanWs()
            }
        }
    }
}
