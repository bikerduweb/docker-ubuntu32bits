docker-ubuntu32bits [![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/veilleperso/docker-ubuntu32bits/blob/master/LICENCE)
====

Vagrant machine to build a 32 bits ubuntu image for docker.


## Usage

We use vagrant + virtualbox to build the image so you need to make sure that you have both installed, then:

* make sure your are logged in on docker registry and that you have a properly define .dockercfg in your $HOME dir
```
docker login
```
* clone, configure your docker hub username to allow vagrant to autopublish the resulting image
```
git clone https://github.com/veilleperso/docker-ubuntu32bits.git
cf docker-ubuntu32bits
echo "username" > ./docker_username
```
* run
```
vagrant up --provision
```

If everything work, you should have a proper image pushed in your account on the docker registry


## Contribution

1. Fork ([https://github.com/veilleperso/docker-ubuntu32bits/fork](https://github.com/veilleperso/docker-ubuntu32bits/fork))
1. Create a feature branch
1. Commit your changes
1. Rebase your local changes against the master branch
1. Push it to your remote repository
1. Create new Pull Request

## Author

[veilleperso](https://github.com/veilleperso)
