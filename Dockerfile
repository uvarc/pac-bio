FROM masonaj157/smrtlink-containers:sl-cont-v1
MAINTAINER "Praveen Kumar Addakula"
USER smrtanalysis
ENV SMRT_ROOT /opt/pacbio/smrtlink
EXPOSE 22 8243 9243 9443
ENTRYPOINT ["${SMRT_ROOT}/admin/bin/services-start"]