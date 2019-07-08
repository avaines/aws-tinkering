pipeline {
    parameters {
        string(name: 'DEFAULT_BRANCH', defaultValue: 'master', description: 'Default branch so you can overwrite the conditions'),
        choice(
            choices: ['dev', 'prod'], 
            description: 'Which environment to build?', 
            name: 'ENVIRONMENT',
            defaultValue: 'dev'
        )
    }
    options {
        disableConcurrentBuilds()
        timeout(time: 2, unit: 'HOURS')
    }

    stages {
        stage('Deploy to non-production environments') {
            steps {
                script {
                    sh "make terraform-build env=${params.ENVIRONMENT}"
                }
            } //end-step
        } //end-stage

    } //end-stages
} //end-pipeline
