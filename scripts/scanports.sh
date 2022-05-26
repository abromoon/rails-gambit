#!/bin/sh

ports=$(nmap -p0-65535 ${SCAN_TARGET})
open=$(echo "$ports" | grep "open" | wc -l)
if [ $open -ne "${ALLOWED_PORTS}" ]; then
  echo "WARNING ${open} ports opened but expected ${ALLOWED_PORTS}"
  echo "$ports"
  
  if [ -n "$TELEGRAM_BOT_TOKEN" ]; then
    text="WARNING ${open} opened ports for ${SCAN_TARGET} but ${ALLOWED_PORTS} expected

\`\`\`
${ports}
\`\`\`"

    curl -X POST -H 'Content-Type: application/json' -d "{\"chat_id\": \"${TELEGRAM_DEV_CHAT_ID}\", \"text\": \"${text}\", \"disable_notification\": true}" https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage?parse_mode=markdown
  fi
  
else
  echo "Success ${open} opened as expected"
fi

