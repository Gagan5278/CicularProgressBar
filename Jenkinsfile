pipeline {
    agent any 
    stages {
        stage('Example Build') {
               steps {
                xcodeBuild appURL: '',
                    assetPackManifestURL: '',
                    buildDir: '',
                    bundleID: '',
                    cfBundleShortVersionStringValue: '',
                    cfBundleVersionValue: '',
                    changeBundleID: false,
                    configuration: 'Release',
                    developmentTeamID: '6V63C69JJF',
                    developmentTeamName: '',
                    displayImageURL: '',
                    fullSizeImageURL: '',
                    ipaExportMethod: 'development',
                    ipaName: 'PreProd',
                    ipaOutputDirectory: '',
                    logfileOutputDirectory: '',
                    provisioningProfiles: [[provisioningProfileAppId: '', provisioningProfileUUID: '']],
                    sdk: '',
                    symRoot: '',
                    target: 'CircularProgressView',
                    thinning: '',
                    buildIpa: true,
                    xcodeProjectFile: '/Users/gavishal/.jenkins/workspace/Money/CircularProgressView/CircularProgressView.xcodeproj',
                    xcodeSchema: 'CircularProgressView',
                    xcodeWorkspaceFile: '',
                    xcodebuildArguments: ''
            }
        }
        stage('Example Test') {
            steps {
                echo 'Hello, JDK'
            }
        }
      stage('Archive') {
            steps {
                archiveArtifacts 'build/Release-iphoneos/PreProd.ipa'
            }
        }
        stage('Deploy') {
            steps {
                sh 'cd /Applications/Transporter.app/Contents/Frameworks/ITunesServices.framework/Versions/A/Frameworks/ITunesSoftwareService.framework/Versions/A/Support/ \n xcrun altool --upload-app -f "/Users/gavishal/.jenkins/workspace/Money/build/Release-iphoneos/PreProd.ipa" -u gagan5278@gmail.com -p Devi_Asha123'
            }
        }
    }
}