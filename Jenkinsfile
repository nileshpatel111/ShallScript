pipeline {
    agent {
        node { 
            label 'ansible' 
        }
    }

    stages {
        stage('clean_directory') {
            steps {
                sh 'sudo sh /home/jenkins/myscripts/deletemyfirstpipeline.sh'
                //sh 'rm -rf /home/jenkins/workspace/firstpipeline'
                //sh 'ansible-playbook /etc/ansible/my_yaml/cleanartifact.yaml'
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh "exit 1"
                }
            }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh "exit 1"
                }
            }
            
        }
        stage('git_checkout') {
            steps {
                git 'https://github.com/nileshpatel111/game-of-life.git'
            }
        }
        stage('build_gameoflife') {
            steps {
                sh 'mvn clean verify'
            }
        }
        
        stage('deploy_gameoflife') {
            steps {
                sh 'ansible-playbook /etc/ansible/my_yaml/copywarfile.yaml'
            }
        }
    }
}
