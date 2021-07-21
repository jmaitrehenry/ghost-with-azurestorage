ARG GHOST_VERSION=4.9.4
FROM ghost:${GHOST_VERSION}

COPY azure /var/lib/ghost/content.orig/adapters/storage/azure
RUN cd /var/lib/ghost/current && \
    npm install --prefix ${GHOST_CONTENT}.orig/adapters/storage/azure && \
    rm -rf ${GHOST_CONTENT}.orig/adapters/storage/azure/node_modules/sharp && \
    cp -r ${GHOST_INSTALL}/current/node_modules/sharp ${GHOST_CONTENT}.orig/adapters/storage/azure/node_modules/ && \
    chown -R node. ${GHOST_CONTENT}.orig/adapters/storage
