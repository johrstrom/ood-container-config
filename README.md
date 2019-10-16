# OpenOndemand Container configs

This repository contains configurations for booting an Open Ondemand
container for developmental purposes. 

The [env file](ood-server.env) is a list of mounts and extra arguements
to pass to the command that runs the container (in my case `podman run`).
This file will almost always contain commented out entries because users
(me) will be constantly toggling whether or not to boot specialized files
instead of what's installed in the image.

All the other files and directories are the actual files and folders to
to be mounted.
