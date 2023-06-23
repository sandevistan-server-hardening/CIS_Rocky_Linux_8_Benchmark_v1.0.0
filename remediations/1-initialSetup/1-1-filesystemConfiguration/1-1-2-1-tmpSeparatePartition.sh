echo "1.1.2.1 requires manual remediation."
echo "Try 'systemctl unmask tmp.mount'."
echo "Modify /etc/fstab with, e.g.;"
echo "tmpfs /tmp tmpfs defaults,rw,nosuid,nodev,noexec,relatime,size=2G 0 0"
