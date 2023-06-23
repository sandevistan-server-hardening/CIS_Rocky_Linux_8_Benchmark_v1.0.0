echo "1.1.3.1 requires manual remediation."
echo "For new installations, create a custom partition and specify a separate partition for /var."
echo "For installed systems, create a new partition and configure /etc/fstab for /var, e.g.;"
echo "/var /dev/sdb ext4 rw,nosuid,nodev,noexec,relatime,seclabel"
