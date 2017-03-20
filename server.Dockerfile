from library/photon:1.0
COPY ./notary-server /bin/notary-server
ENTRYPOINT [ "notary-server" ]
