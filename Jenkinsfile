pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                    echo "Running tests..."
                    which carton
                    prove -lv t
                '''
            }
        }
    }
}
