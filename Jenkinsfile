pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "eu-west-2"
    }
    stages {
        stage('Checkout SCM'){
            steps{
                script{
                    checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/clement2019/terraform-jenkins-deploy-aws-eks.git']])
                }
            }
        }
        stage('Deploying Nginx Application') {
            steps{
                script{
                    sh 'aws eks update-kubeconfig --name eks-cluster-209'
                    sh 'kubectl config current-context'
                    sh 'eksctl get cluster'
                    sh "kubectl get ns"
                    sh 'kubectl apply -f deployment.yaml'
                    sh 'kubectl apply -f service.yaml'


                }
            }
                    
                    
                    
                    
        }
            
    }
}

    

