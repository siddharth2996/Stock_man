pipeline {

    agent any

    environment {
        PASS = credentials('registry-pass')

    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh

                '''
            }

            post {
                success {
                   archiveArtifacts artifacts: 'stockmanager/target/*.jar', fingerprint: true

                }
            }

         }

        stage('Test') {
            steps {
                sh './jenkins/test/mvn.sh mvn test'
            }

            post {
                always {
                  junit 'stockmanager/target/surefire-reports/*.xml'

             }

          }

        }

        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }
    }
}

