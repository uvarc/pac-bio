FROM masonaj157/smrtlink-containers:sl-cont-v1

MAINTAINER "Praveen Kumar Addakula"

USER smrtanalysis
ENV SMRT_ROOT=/opt/pacbio/smrtlink

# Copy services-status file and ensure execution permissions
COPY ./services-status /opt/pacbio/smrtlink/admin/bin/services-status
RUN chmod +x /opt/pacbio/smrtlink/admin/bin/services-status

# Expose required ports
EXPOSE 22 8243 9243 9443

# Set the default command to start services
ENTRYPOINT ["/opt/pacbio/smrtlink/admin/bin/services-start"]