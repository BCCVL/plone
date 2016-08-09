node {
    // fetch source
    stage 'Checkout'

    checkout scm

    // build image
    stage 'Build'

    def imagename = 'hub.bccvl.org.au/plone/plone'
    def img = docker.build(imagename)

    // publish image to registry
    stage 'Publish'

    def imagetag = getBuildoutVersion('files/versions.cfg', 'Plone')
    img.push(imagetag)

    slackSend color: 'good', message: "New Image ${imagename}:${imagetag}\n${env.JOB_URL}"
}

