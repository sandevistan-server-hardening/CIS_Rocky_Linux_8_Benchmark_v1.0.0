printf "install udf /bin/false
blacklist udf
" >> /etc/modprobe.d/udf.conf"

modprobe -r udf
