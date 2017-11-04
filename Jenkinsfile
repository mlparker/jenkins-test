pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                    echo "Running tests..."
                    prove -lv t
                '''
            }
        }
    }
}
