pipeline {
    stage('Initialize'){
        def dockerHome = tool 'dockerci'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    agent {
        docker {
            image 'node:lts-buster-slim' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
    }
}