FROM masonaj157/smrtlink-containers:sl-cont-v1
MAINTAINER "Praveen Kumar Addakula"

# Switch to root for installing packages
USER root

# Check if yum, apt, or apk is available and install lsof and strace accordingly
RUN if command -v yum &>/dev/null; then \
        yum install -y lsof strace; \
    elif command -v apt-get &>/dev/null; then \
        apt-get update && apt-get install -y lsof strace; \
    elif command -v apk &>/dev/null; then \
        apk add --no-cache lsof strace; \
    else \
        echo "No supported package manager found. lsof and strace installation skipped."; \
    fi

# Copy services-status file into the container
COPY services-status /opt/pacbio/smrtlink/admin/bin/services-status

# Ensure the file has the correct permissions and ownership for the smrtanalysis user
RUN chown smrtanalysis:smrtanalysis /opt/pacbio/smrtlink/admin/bin/services-status \
    && chmod +x /opt/pacbio/smrtlink/admin/bin/services-status \
    || echo "Permission change failed, ignoring"

# Switch back to smrtanalysis user
USER smrtanalysis
WORKDIR /home/smrtanalysis

ENV SMRT_ROOT=/opt/pacbio/smrtlink

EXPOSE 22 8243 9243 9443

# Start services using services-start script
ENTRYPOINT ["/bin/bash", "-c", "/opt/pacbio/smrtlink/admin/bin/services-start && sleep infinity"]

