FROM nginx:1.15.12
RUN cp /etc/hosts /etc/hosts.tmp && \
    echo -e "\
127.0.0.1 app_front2 \n\
127.0.0.1 pm_zentao_1 \n\
127.0.0.1 ci_drone_1 \n\
    " >> /etc/hosts && \
    nginx -t && \
# mv: can't rename '/etc/hosts.tmp': Resource busy
# mv /etc/hosts.tmp /etc/hosts
    cat /etc/hosts.tmp > /etc/hosts && \
    rm /etc/hosts.tmp

