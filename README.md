# ubuntu-vnc

Single user ubuntu 18.04, vnc server with xfce4 for docker
Login the vnc server is not required

### Usage Single Server
Start the server:

```bash
docker run -p 5900:5900 -d thomasfady/ubuntu-vnc:latest 
```

Connect with your favorite vncviewer to your <docker-host>

Default user is : ubuntu
with password   : ubuntu
VNC password    : ubuntu

Define a custom VNC password:

```bash
docker run -e VNC_PASS=password -p 5900:5900 -d thomasfady/ubuntu-vnc:latest 
```
