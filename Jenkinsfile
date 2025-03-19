pipeline {
    agent any

    stages {
        stage('Clone the Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/manjumh021/test-api.git'
            }
        }

        stage('Build the Image') {
            steps {
                sh "docker build -t flask-app:latest ."
            }
        }

        stage('Run Container') {
            steps {
                sh "docker run -d --name myapp -p 5000:5000 flask-app"
            }
        }

        stage('Test API') {
            steps {
                sh "./test_api.sh"
            }
        }

        stage('Stop Container and Remove Image') {
            steps {
                sh """
                    docker stop myapp || true
                    docker rm myapp || true
                    docker rmi flask-app:latest || true
                """
            }
        }

        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }
    }
}
