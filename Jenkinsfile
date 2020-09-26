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
                'firebase appdistribution:distribute /Users/gavishal/.jenkins/workspace/Money/build/Release-iphoneos/PreProd.ipa  --app 1:734651545121:ios:ce39930948054fe0f4d560   --release-notes "Bug fixes and improvements" --testers-file /Users/gavishal/Desktop/testers.txt'
            }
        }
    }
}