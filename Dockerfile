FROM grafana/grafana:8.3.7

ENV GF_SECURITY_ADMIN_PASSWORD=admin

USER root

COPY ./provisioning /etc/grafana/provisioning
COPY ./dashboards/*.json /var/lib/grafana/dashboards/

EXPOSE 3000

CMD ["grafana-server", "--homepath=/usr/share/grafana"]