FROM masonaj157/smrtlink-containers:sl-cont-v1

MAINTAINER "Praveen Kumar Addakula"

USER smrtanalysis
ENV SMRT_ROOT=/opt/pacbio/smrtlink

# Copy services-status file into the container
COPY services-status /opt/pacbio/smrtlink/admin/bin/services-status

# Ensure the file has the correct permissions and ownership for the smrtanalysis user
RUN chown smrtanalysis:smrtanalysis /opt/pacbio/smrtlink/admin/bin/services-status \
    && chmod +x /opt/pacbio/smrtlink/admin/bin/services-status \
    || echo "Permission change failed, ignoring"

EXPOSE 22 8243 9243 9443

# Start services using services-start script
ENTRYPOINT ["/opt/pacbio/smrtlink/admin/bin/services-start"]
