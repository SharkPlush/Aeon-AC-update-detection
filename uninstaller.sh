rm /usr/local/bin/ac-detect
rm /etc/systemd/system/transactional-update.service.d/override.conf
rm -r /var/cache/ac-detect/
systemctl daemon-reload
