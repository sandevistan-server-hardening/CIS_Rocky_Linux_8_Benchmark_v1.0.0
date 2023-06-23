echo "1.2.1 needs to be tested manually. Refer to pages 103-104 of the CIS Benchmark document for Rocky 8, v1.0."
echo "Issuing the following command will list GPG key URLs;"
echo "grep -r gpgkey /etc/yum.repos.d/* /etc/dnf/dnf.conf"
echo "The results (gpg-pubkey-<version/GPG key id>-<release date in timestamp hex>) can be compared to the relevant repositories."
echo "local GPG keys can similarly be checked with;"
echo 'for PACKAGE in $(find /etc/pki/rpm-gpg/ -type f -exec rpm -qf {} \; | sort'
echo '-u); do rpm -q --queryformat "%{NAME}-%{VERSION} %{PACKAGER} %{SUMMARY}\\n"'
echo '"${PACKAGE}"; done'
