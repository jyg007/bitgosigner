host-attestation: 
  HKD-$MACHINE1:
    description:  $MACHINE1_DESCRIPTION
    host-key-doc: $MACHINE1_HKD_B24
crypto-pt: 
  lock: false
  index-1:
    type: secret
    domain-id: "$HSMDOMAIN1"
    secret: $SECRET_B24
    mkvp: $MKVP
auths:
  "$REGISTRY_URL":
    password: "$REGISTRY_PASSWORD"
    username: "$REGISTRY_USERNAME"
cacerts:
- certificate: "$REGISTRY_CA"
env:
  BITGO_CA_CRT: "$BITGO_CA_CRT"
  BITGO_SERVER_CRT: "$BITGO_SERVER_CRT"
  BITGO_SERVER_KEY: "$BITGO_SERVER_KEY"
  BITGO_DB_PATH: "$BITGO_DB_PATH"
  BITGO_HSM:  "$BITGO_HSM"
logging:
  syslog:
    hostname: "$SYSLOG_HOSTNAME"
    port: $SYSLOG_PORT
    server: | 
$SYSLOG_SERVER_CERT
    cert: | 
$SYSLOG_CLIENT_CERT
    key: |
$SYSLOG_CLIENT_KEY
type: env
volumes:
  data:
    seed: "$DATA_ENV_PASS"
