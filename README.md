# Adventures In Tech World

A web app for organising collaboration, built with Flutter. 

[![Coverage Status](https://coveralls.io/repos/github/Adventures-In/Tech-World/badge.svg?branch=dev)](https://coveralls.io/github/Adventures-In/Tech-World?branch=dev)
![CI](https://github.com/Adventures-In/Tech-World/workflows/CI/badge.svg)

# Setup 

1. clone the project into 'tech_world', or anything with lowercase and underscores (restriction of dart packages)
1. enable flutter web if not already done (see [Building a web application with Flutter - Flutter](https://flutter.dev/docs/get-started/web))

## Firebase config 
### (if you want to join as a collaborator)
1. join [the firebase project](https://console.firebase.google.com/project/adventures-in-tech-world)
1. setup [firebase cli](https://firebase.google.com/docs/cli), if not done already
1. get the credential files
   1. Get .firebaserc & index_debug.html from [adventures-in-tech-world – Storage – Firebase console](https://console.firebase.google.com/project/adventures-in-tech-world/storage/ci-credentials/files)

### (if you don't want to join as a collaborator)
1. create a firebase project
1. firebase init - follow the prompts
1. add firebase setup to index.html

### run the project
1. codegen for built_value
1. redux devtools setup and use

## State Diagrams 

### Auth Sequence 

![](https://docs.google.com/drawings/d/e/2PACX-1vR9GnJw-lPS7YUP-By-OmTua2vrPwW89MHf7YxWZssHgWAhIblWBg9mEwiZiiJx8YWbolNfRlYedHjM/pub?w=1242&h=984)

## Sections 
#### Profiles 

You can add info about what you're working on, including links to repos. Also some of the skills you have, the type of projects you want to work on and anything you need help with.

#### Topics 

You can select a set of topics you are interested in. 

#### Project Management 

You can indicate your current goals by selecting issues in your repos. 

# Common Commands 

```sh
remotedev --port 8000
flutter pub run build_runner build --delete-conflicting-outputs
flutter pub run build_runner watch --delete-conflicting-outputs
firebase deploy --only functions
firebase deploy --only hosting:adventures-in-tech-world
firebase deploy --only firestore:rules
~/utils/chromedriver --port=4444
flutter drive --target=test_driver/app.dart --browser-name=chrome --release -d chome
```