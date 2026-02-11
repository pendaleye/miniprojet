pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'robotframework',
                    url: 'https://github.com/pendaleye/miniprojet.git'
            }
        }

        stage('Install dependencies') {
            steps {
                bat """
                pip install --upgrade pip
                pip install robotframework
                pip install robotframework-seleniumlibrary
                pip install selenium
                """
            }
        }

        stage('Run Robot Tests') {
            steps {
                bat """
                robot -d results tests/
                """
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'results/**/*.*', fingerprint: true
            junit 'results/output.xml'
        }
    }
}
