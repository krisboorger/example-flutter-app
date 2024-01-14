pipeline {
    agent any
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
