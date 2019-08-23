try {
 stage('Init') {
		    from starter template
                    deleteDir()
                }
                stage('Checkout') {
		    from starter template
                    checkout scm
                }
             }
}
catch(Exception e) {
                       mail to: "techdev@zento.fr", subject: "Build #${env.BUILD_NUMBER} of Job ${env.JOB_NAME} failed", body: "See ${env.RUN_DISPLAY_URL}"
                       throw e
                   }
