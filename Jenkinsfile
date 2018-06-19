pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                echo 'Building..'
                sh './webappdemo/gradlew assemble -p webappdemo'
                archiveArtifacts 'webappdemo/build/libs/joinfaces-gradle-war-example.war'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh './webappdemo/gradlew test -p webappdemo'
                junit 'webappdemo/build/test-results/test/*.xml'
                archiveArtifacts 'webappdemo/build/reports/tests/test/**/*'
            }
        }
        stage('SonarQube Analysis..') {
            steps {
                echo 'Executing sonarqube task'
                sh './webappdemo/gradlew clean sonarqube -p webappdemo'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh './webappdemo/gradlew -b deploy.gradle deploy -p webappdemo'
            }
        }
    }
}