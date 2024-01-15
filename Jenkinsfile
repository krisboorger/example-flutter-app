pipeline {
    agent {
        docker {
            image 'krisboorger/flutter-sdk:0.5'
            reuseNode true
            args '-u root'
        }
    }
    environment {
        FLUTTER_BIN = '/home/user/flutter_sdk/flutter/bin/flutter'
        ANDROID_SDK_ROOT = '/home/user/android_sdk'
        ARTIFACTS_PATH = 'build/app/outputs/flutter-apk/*.apk'
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
                sh "$FLUTTER_BIN build apk --split-per-abi"
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: "$ARTIFACTS_PATH", fingerprint: true
        }
    }
}
