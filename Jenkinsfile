pipeline {
    agent any

    stages {

        stage('Code') {
            steps {
                git ''
            }
        }

        stage('code-build') {
            steps {
                sh 'mvn clean package'
            }
        }

    }
}
