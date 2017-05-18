# Copy the files into their proper locations and 
# enable the service

cp script/shutdown-button.py /usr/local/bin/shutdown-button.py
cp service/shutdown-button.service /etc/systemd/system/shutdown-button.service
systemctl enable shutdown-button.service
