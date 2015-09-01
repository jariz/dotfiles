echo "Installing jari's apps..."

#### SIZEUP #####
wget http://www.irradiatedsoftware.com/download/SizeUp.zip
unzip SizeUp.zip
rm SizeUp.zip
sudo mv SizeUp.app /Applications/

#### ITERM #####
echo "Warning: installing iTerm 2.1.1, might wanna check if there's a newer version"
wget https://iterm2.com/downloads/stable/iTerm2-2_1_1.zip
unzip iTerm2-2_1_1.zip
rm iTerm2-2_1_1.zip
mv iTerm.app /Applications/

#### CHITCHAT (whatsapp wrapper) ####
echo "Warning: installing ChitChat 1.3, might wanna check if there's a newer version"
wget https://github.com/stonesam92/ChitChat/releases/download/v1.3/ChitChat.zip
unzip ChitChat.zip
rm ChitChat.zip
mv ChitChat.app /Applications/

#### MAC2IMGUR (automatic uploading of screenshots)
wget https://mileswd.com/mac2imgur/latest -O mac2imgur.zip
unzip mac2imgur.zip
rm mac2imgur.zip
mv mac2imgur.app /Applications/

###### SKETCH (better than photoshop) #######
wget http://bohemiancoding.com/static/download/sketch.zip
unzip sketch.zip
rm sketch.zip
mv Sketch.app /Applications/

###### ALFRED 2 (spotlight replacement) ######
echo "Warning: installing Alfred 2.7.2, might wanna check if there's a newer version"
wget https://cachefly.alfredapp.com/Alfred_2.7.2_407.zip
unzip Alfred_2.7.2_407.zip
rm Alfred_2.7.2_407.zip
mv Alfred\ 2.app /Applications/

printf "\n\nDonerino. Please manually install:\n- Sequel Pro\n- Slack\n- Sublime Text 3\n- Skype\n- Firefox\n- Spotify\n- Steam\n- VirtualBox\n- VLC"