pipeline {
    agent none
    stages {
        stage('Integration UI Test') {
            parallel {
                stage('Deploy') {
                    agent any
                    steps {
                        bat 'jenkins\\scripts\\deploy.bat'
                        input message: 'Finished using the web site? (Click "Proceed" to continue)'
                    }
                }
                stage('Headless Browser Test') {
                    agent any
                    steps {
                        bat 'mvn -B -DskipTests clean package'
                        bat 'mvn test'
                    }
                    post {
                        always {
                            junit 'target/surefire-reports/*.xml'
                        }
                    }
                }
            }
        }
         post {
        always {
            bat 'jenkins\\scripts\\kill.bat'
        }
    }
}