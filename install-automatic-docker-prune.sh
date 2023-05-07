#!/bin/bash

# Define and save file
echo "Add docker prune command to /etc/cron.daily/docker-prune"

echo '#!/bin/bash
sudo docker system prune -af --filter "until=$((2*24))h"
sudo docker builder prune -af --filter "until=24h"
' | sudo tee /etc/cron.daily/docker-prune > /dev/null

sudo chmod +x /etc/cron.daily/docker-prune

echo "File successfully added"
echo "You try cron dail with: 'run-parts /etc/cron.daily'"



