node{
    def app

    stage('clone repository'){
        checkout scm
    }

    stage('build images'){
        app = docker.build("vaibhavd07/first_repo")
    }

    stage('push image'){
        docker.withRegistry('https://registry.hub.docker.com/','docker-hub-credentials'){
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}