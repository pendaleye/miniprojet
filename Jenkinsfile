pipeline {
    agent any

    stages {
        stage('Install dependencies') {
            steps {
                sh 'pip install robotframework'
            }
        }

        stage('Run Robot Tests') {
            steps {
                sh 'robot -d results tests/'
            }
        }

        stage('Publish Robot Results') {
            steps {
                robot outputPath: 'results'
            }
        }
    }
}
