FROM masonaj157/smrtlink-containers:sl-cont-v1

MAINTAINER "Praveen Kumar Addakula"

USER smrtanalysis
ENV SMRT_ROOT=/opt/pacbio/smrtlink

# Ensure the file has the right permissions before adding it
COPY services-status /opt/pacbio/smrtlink/admin/bin/services-status
RUN chmod +x /opt/pacbio/smrtlink/admin/bin/services-status || echo "Permission change failed, ignoring"

EXPOSE 22 8243 9243 9443
ENTRYPOINT ["/opt/pacbio/smrtlink/admin/bin/services-start"]

