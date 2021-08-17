# Instructions

Populate your hostsfile by appending the output of `./etchosts.sh` to /etc/hosts

You will need to be root to update /etc/hosts- try running as sudo: `sudo vi /etc/hosts`

verify that your traffic is being routed through akamai by running a traceroute on some of those hosts- you should see see your traffic going through akamai edge nodes

Run the healthchecks by running `./healthcheck.sh`
