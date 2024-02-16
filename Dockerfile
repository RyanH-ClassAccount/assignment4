# Use the latest Fedora base image
FROM fedora:latest

# Run an upgrade of the system using the dnf command
RUN dnf -y upgrade

# Install tuxpaint, vim, and httpd applications
RUN dnf -y install tuxpaint vim httpd

# Copy myinfo.html file to /var/www/html/ location in the container
COPY myinfo.html /var/www/html/

# Expose port 80/tcp
EXPOSE 80/tcp

# Enable the httpd service using the ENTRYPOINT directive
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
