FROM masonaj157/smrtlink-containers:sl-cont-v1

MAINTAINER "Praveen Kumar Addakula"

USER smrtanalysis
ENV SMRT_ROOT=/opt/pacbio/smrtlink

# Ensure the file has the right permissions and ownership before adding it
COPY services-status /opt/pacbio/smrtlink/admin/bin/services-status

# Change ownership to smrtanalysis user and then make the file executable
RUN chown smrtanalysis:smrtanalysis /opt/pacbio/smrtlink/admin/bin/services-status \
    && chmod +x /opt/pacbio/smrtlink/admin/bin/services-status || echo "Permission change failed, ignoring"

EXPOSE 22 8243 9243 9443
ENTRYPOINT ["/opt/pacbio/smrtlink/admin/bin/services-start"]
