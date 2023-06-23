echo "Testing 1.3.2 Ensure filesystem integrity is regularly checked."
if [ $(grep -Ers '^([^#]+\s+)?(\/usr\/s?bin\/|^\s*)aide(\.wrapper)?\s(--?\S+\s)*(--(check|update)|\$AIDEARGS)\b' /etc/cron.* /etc/crontab /var/spool/cron/ | wc -l) -ge 1 ]
then
  echo "PASS 1.3.2"
else
  if [ "$(systemctl is-enabled aidecheck.service)" == "enabled" ] then
    if [ "$(systemctl is-enabled aidecheck.timer)" == "enabled" ] then
	  if [ $(systemctl status aidecheck.timer | grep -c "active (running)") -ge 1 ] then
	    echo "PASS 1.3.2"
	  else
	    echo "FAIL 1.3.2: AIDE not in cron and aidecheck.timer not active."
	  fi
	else
	  echo "FAIL 1.3.2: AIDE not in cron and aidecheck.timer not enabled"
	fi
  else
    echo "FAIL 1.3.2: AIDE not in cron and aidecheck.service not enabled"
  fi
fi
