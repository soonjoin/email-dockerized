A Dockerized email system using postfix+dovecot+PostfixAdmin+RoundcubeMail

docker compose up -d后，执行chown 1000:1000 ./data/mail

使用自签名证书时，请在./www/roundcubemail/config/config.inc.php中加入
$config['imap_conn_options'] = [ 'ssl' => [
//'local_cert'        => '/path/to/key.pem',
//'peer_fingerprint'  => openssl_x509_fingerprint(file_get_contents('/path/to/key.crt')),
'verify_peer'       => false,
'verify_peer_name'  => false,
'allow_self_signed' => true,
'verify_depth'      => 0 ]];
$config['smtp_conn_options'] = [ 'ssl' => [
//'local_cert'        => '/path/to/key.pem',
//'peer_fingerprint'  => openssl_x509_fingerprint(file_get_contents('/path/to/key.crt')),
'verify_peer'       => false,
'verify_peer_name'  => false,
'allow_self_signed' => true,
'verify_depth'      => 0 ]];

