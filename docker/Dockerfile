FROM masonaj157/smrtlink-containers:sl-cont-v1

MAINTAINER "Praveen Kumar Addakula"

USER root  # Temporarily switch to root to change permissions
ENV SMRT_ROOT=/opt/pacbio/smrtlink

COPY services-status /opt/pacbio/smrtlink/admin/bin/services-status
RUN chmod +x /opt/pacbio/smrtlink/admin/bin/services-status

USER smrtanalysis  # Switch back to the original user

EXPOSE 22 8243 9243 9443
ENTRYPOINT ["/opt/pacbio/smrtlink/admin/bin/services-start"]
