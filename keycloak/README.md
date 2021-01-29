# Use kcadm.sh
https://www.keycloak.org/docs/latest/server_admin/#the-admin-cli
export PATH=$PATH:/opt/jboss/keycloak/bin/

## Login
kcadm.sh config credentials --server http://keycloak.cat.lol:8080/auth --realm master --user keycloak --password keycloak --client admin-cli || kcadm.sh config credentials --server http://keycloak.cat.lol:8443/auth --realm master --user keycloak --password keycloak --client admin-cli

## Get realms
kcadm.sh get realms --fields id --format csv



kcadm.sh create components -s name=kerberos-ldap-provider -s providerId=ldap -s providerType=org.keycloak.storage.UserStorageProvider -s parentId=3d9c572b-8f33-483f-98a6-8bb421667867  -s 'config.priority=["1"]' -s 'config.fullSyncPeriod=["-1"]' -s 'config.changedSyncPeriod=["-1"]' -s 'config.cachePolicy=["DEFAULT"]' -s config.evictionDay=[] -s config.evictionHour=[] -s config.evictionMinute=[] -s config.maxLifespan=[] -s 'config.batchSizeForSync=["1000"]' -s 'config.editMode=["WRITABLE"]' -s 'config.syncRegistrations=["false"]' -s 'config.vendor=["other"]' -s 'config.usernameLDAPAttribute=["uid"]' -s 'config.rdnLDAPAttribute=["uid"]' -s 'config.uuidLDAPAttribute=["entryUUID"]' -s 'config.userObjectClasses=["inetOrgPerson, organizationalPerson"]' -s 'config.connectionUrl=["ldap://localhost:10389"]'  -s 'config.usersDn=["ou=People,dc=keycloak,dc=org"]' -s 'config.authType=["simple"]' -s 'config.bindDn=["uid=admin,ou=system"]' -s 'config.bindCredential=["secret"]' -s 'config.searchScope=["1"]' -s 'config.useTruststoreSpi=["ldapsOnly"]' -s 'config.connectionPooling=["true"]' -s 'config.pagination=["true"]' -s 'config.allowKerberosAuthentication=["true"]' -s 'config.serverPrincipal=["HTTP/localhost@KEYCLOAK.ORG"]' -s 'config.keyTab=["http.keytab"]' -s 'config.kerberosRealm=["KEYCLOAK.ORG"]' -s 'config.debug=["true"]' -s 'config.useKerberosForPasswordAuthentication=["true"]'



ldap https://codehumsafar.wordpress.com/tag/ldap-with-keycloak/
https://www.janua.fr/ldap-integration-with-keycloak/