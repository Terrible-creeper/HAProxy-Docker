FROM haproxy:latest
COPY ./haproxy.cfg /usr/local/etc/haproxy/

USER root
RUN mkdir -p /run/haproxy
RUN chown haproxy:haproxy /run/haproxy

USER haproxy
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
