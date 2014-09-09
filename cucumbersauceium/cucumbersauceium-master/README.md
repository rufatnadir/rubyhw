cucumbersauceium
================

## Install
Before you install add your sauce username and access key to the env.rb or your bashrc
```
bundle install
```

## Tasks:
#### Run desktop tests
```
rake web BROWSER=chrome
```
#### Run mobile web tests
```
rake mweb OS=ios
```
#### Run native mobile tests
```
rake mobile OS=ios
```

#### Run all tests
```
rake matrix
```


