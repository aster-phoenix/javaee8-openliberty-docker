FROM airhacks/openliberty
COPY server.xml ${CONFIG}
COPY ./target/OpenLibertyTest.war ${DEPLOYMENT_DIR}