from library/photon:1.0
COPY ./notary-signer /bin/notary-signer
ENTRYPOINT [ "notary-signer" ]
