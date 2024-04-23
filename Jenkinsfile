

pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Samyuktha-sam/4189-Samyuktha.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("react-docker:tag")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("react-docker:tag").run("-d -p 8083:8083 --name react-docker")
                }
            }
        }
    }
}