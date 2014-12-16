FROM dtompkins/centos6-base:latest
MAINTAINER David Tompkins <tompkins@adobe.com>

# Exposed data volumes
VOLUME ["/var/lib/mysql"]

CMD ["/bin/echo", "Data Volume Container:", "/var/lib/mysql"]
