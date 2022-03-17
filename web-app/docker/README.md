## DOCKER


## Dockerfile Basics
Before we construct our Dockerfile, you need to understand what makes up the file. This will be a text file, named Dockerfile, that includes specific keywords that dictate how to build a specific image. The specific keywords you can use in a file are:

 - ADD copies the files from a source on the host into the container’s own filesystem at the set destination.
- CMD can be used for executing a specific command within the container.
- ENTRYPOINT sets a default application to be used every time a container is created with the image.
- ENV sets environment variables.
- EXPOSE associates a specific port to enable networking between the container and the outside world.
- FROM defines the base image used to start the build process.
- MAINTAINER defines a full name and email address of the image creator.
- RUN is the central executing directive for Dockerfiles.
- USER sets the UID (or username) which is to run the container.
- VOLUME is used to enable access from the container to a directory on the host machine.
- WORKDIR sets the path where the command, defined with CMD, is to be executed.
- LABEL allows you to add a label to your docker image.