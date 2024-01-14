pipeline {
    agent {
        docker { image 'mobiledevops/flutter-sdk-image:3.16.4' }
    }
    environment {
        FOO = 'bar'
    }
    stages {
        stage('analyze') {
            steps {
                sh 'echo analyzing...'
            }
        }
        stage('test') {
            steps {
                sh 'echo testing...'
            }
        }
        stage('build') {
            steps {
                sh 'echo building...'
            }
        }
    }
}
