# docker-timefix
This is a very simple container designed to be run with Docker on a **Docker for Mac** setup.  I have found the clock on the "VM" where Docker runs on the Mac to be very drifty.  Therefore, I have made this simple container to use `ntpdate` to sync up the VM clock time whenever I see it drifting significantly.

## Building
Building this container is as simple as cloning this repository and then running the following command in this repository's directory:

```bash
docker build -t timefix .
```

You should now have an image named `timefix` that is referenced by the other scripts in this repository.

## Running
Once the image has been created, you can run this from the repository directory using:

```bash
./run.sh
```

This will call the `fix.sh` script inside the container to run `ntpdate` for you.  Additionally, if you don't want to use the default NTP server (`0.north-america.pool.ntp.org`), you can provide your own as the sole argument to the `run.sh` script:

```bash
./run.sh myntp.example.org
```
