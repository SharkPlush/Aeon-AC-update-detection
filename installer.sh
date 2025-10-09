cp ac-detect /usr/local/bin/
chown root:root /usr/local/bin/ac-detect
chmod +x /usr/local/bin/ac-detect
mkdir -p /etc/systemd/system/transactional-update.service.d
cp override.conf /etc/systemd/system/transactional-update.service.d/
chown root:root /etc/systemd/system/transactional-update.service.d/override.conf
systemctl daemon-reload
