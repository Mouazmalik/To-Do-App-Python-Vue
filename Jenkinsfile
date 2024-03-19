pipeline {
    agent any
    stages {
        stage("CLONE CODE 😍") {
            steps {
                echo "Cloning code from GitHub"
                git url: "https://github.com/itxTouseef74/To-Do-App-Python-Vue", branch: "master"
            }
        }
        stage("Build") {
            steps {
                echo "Building the images"
                sh "docker build -t full-stack ./todo-app"
            }
        }
        stage("Push to Docker Hub") {
            steps {
                echo "Pushing images to Docker Hub"
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker tag full-stack touseeef/full-stack:latest "
                    sh "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                    sh "docker push touseeef/full-stack:latest"
                }
            }
        }
        stage("Deploy") {
            steps {
                echo "Deploying the code"
                sh "docker compose stop && docker compose up -d --build"
            }
        }
    }
    post {
        success {
            emailext body: 'Your build was successful.',
                subject: 'Jenkins',
                to: 'touseefhussainlqp@gmail.com'
        }
        failure {
            emailext body: 'Your build failed. Please check Jenkins for details.',
                subject: 'Jenkins',
                to: 'touseefhussainlqp@gmail.com'
        }
    }
}
