FROM ubuntu:20.10
COPY ./bin/ipfs /usr/local/bin
# Create the fs-repo directory
ENV IPFS_PATH /data/ipfs
RUN mkdir -p $IPFS_PATH
# Expose the fs-repo as a volume.
# start_ipfs initializes an fs-repo if none is mounted.
# Important this happens after the USER directive so permissions are correct.
VOLUME $IPFS_PATH
# The default logging level
ENV IPFS_LOGGING ""

COPY ./start_ipfs /usr/local/bin/start_ipfs
RUN chmod 0755 /usr/local/bin/start_ipfs
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates

EXPOSE 4001
EXPOSE 4001/udp
EXPOSE 5001
EXPOSE 8080
EXPOSE 8081

ENTRYPOINT ["/usr/local/bin/start_ipfs"]
CMD ["daemon", "--migrate=true"]
