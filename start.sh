if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kk9546/the-legend-mrkk.git /the-legend-mrkk 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /the-legend-mrkk
fi
cd /the-legend-mrkk 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
