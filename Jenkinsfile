#!/usr/bin/env groovy

node('master') {

    stage('Checkout/Build/Test') {

        // Checkout files.
        checkout([
            $class: 'GitSCM',
            branches: [[name: 'master']],
            doGenerateSubmoduleConfigurations: false,
            extensions: [], submoduleCfg: [],
            userRemoteConfigs: [[
                name: 'github',
                url: 'https://github.com/jackyheart/TryJenkins.git'
            ]]
        ])

        // Build and Test
        sh 'xcodebuild -scheme "TryJenkins" -workspace "TryJenkins.xcworkspace" -configuration "Debug" clean build test -destination "platform=iOS Simulator,name=iPhone 6s,OS=11.3" -enableCodeCoverage YES | /usr/local/bin/xcpretty -r junit'

        // Publish test restults.
        //step([$class: 'JUnitResultArchiver', allowEmptyResults: true, testResults: 'build/reports/junit.xml'])
    }

    stage ('Notify') {
        // Send slack notification
        //slackSend channel: '#my-team', message: 'TryJenkins - Successfully', teamDomain: 'my-team', token: 'my-token'
    }
}