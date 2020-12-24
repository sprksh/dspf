ARG ELK_VERSION

# https://github.com/elastic/kibana-docker
FROM docker.elastic.co/kibana/kibana:${ELK_VERSION}

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>
RUN kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.31/logtrail-7.4.0-0.1.31.zip
RUN kibana-plugin install https://github.com/bitsensor/elastalert-kibana-plugin/releases/download/1.1.0/elastalert-kibana-plugin-1.1.0-7.4.0.zip
