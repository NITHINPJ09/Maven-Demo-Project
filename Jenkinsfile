pipeline {
    agent any 
    stages {
        
        stage('---Version---') { 
            steps {
                sh 'mvn -version'
            }
        }   
                     
        stage('---Clean---') { 
            steps {
                sh 'mvn clean'
            }
        }
        
        stage('---Test---') { 
            steps {
                sh 'mvn test'
            }
        }
        
        stage('---SonarQube Analysis---') { 
            steps {
                withSonarQubeEnv('SQ1') {
                    sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar -Dsonar.organization=test-project-for-devops -Dsonar.coverage.jacoco.xmlReportPaths=target/my-reports/jacoco.xml'
                }
            }
        }

        stage('---Quality Gate---') {
            steps {
                timeout(time: 5, unit: 'MINUTES') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }     
        
        stage('---Package---') { 
            steps {
                sh 'mvn assembly:single'
            }
        }
        
    }
}
