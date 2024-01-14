pipeline {
    agent {
        docker {
            image 'krisboorger/flutter-sdk:0.4'
            reuseNode true
            args '-u root'
        }
    }
    environment {
        FLUTTER_BIN = '/home/user/flutter_sdk/flutter/bin/flutter'
    }
    stages {
        stage('setup') {
            steps {
                sh "git config --global --add safe.directory '/home/user/flutter_sdk/flutter'"
                sh 'su - user'
            }
        }
        stage('analyze') {
            steps {
                sh "$FLUTTER_BIN analyze"
            }
        }
        stage('test') {
            steps {
                sh "$FLUTTER_BIN test"
            }
        }
        stage('build') {
            steps {
                sh "echo building..."
            }
        }
    }
}
