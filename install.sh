#!/bin/bash

echo "Initializing config"

# compatibilty with earlier config files due to few commands name change and directory rename
if [ -f /data/configuration/miscellanea/gpio-buttons-plus/config.json ];then
	mv /data/configuration/miscellanea/gpio-buttons-plus /data/configuration/system_controller/gpio-buttons-plus
	sed -i 's/playpause/playPause/g' /data/configuration/system_controller/gpio-buttons-plus/config.json
	sed -i 's/volup/volumeUp/g' /data/configuration/system_controller/gpio-buttons-plus/config.json
	sed -i 's/voldown/volumeDown/g' /data/configuration/system_controller/gpio-buttons-plus/config.json
fi

echo "plugininstallend"
