FROM freeipa/freeipa-server:centos-8

ARG HOSTNAME=ipa

ARG DOMAIN=domain.lol

ARG IPA_INSTALL_OPTION=""

RUN  ip addr

RUN rm /var/log/ipaserver-install.log && touch /var/log/ipaserver-install.log

RUN /usr/sbin/ipa-server-install \
    --domain=${IPA_DOMAIN:-domain.lol} --realm=${IPA_REALM:-DOMAIN.LOL} \
    --http-pin=${IPA_HTTP_PIN:-V@grant1} --dirsrv-pin=${IPA_DIRSRV_PIN:-V@grant1} \
    --ds-password=${IPA_DS_PASSWORD:-V@grant1} --admin-password=${IPA_ADMIN_PASSWORD:-V@grant1} \
    --no-host-dns #--hostname
