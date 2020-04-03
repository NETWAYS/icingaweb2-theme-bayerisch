#Copy the existing german language and rename it
cp /usr/share/i18n/locales/de_DE /usr/share/i18n/locales/de_BY 2> /dev/null
localedef -i de_BY -f UTF-8 de_BY.UTF-8 2> /dev/null

#To use the langage in Icingaweb2. We need to create sym links into icingaweb2, the monitoring module and the director module
ln -s /usr/share/icingaweb2/modules/bayerisch/translation/monitoring/de_BY/ /usr/share/icingaweb2/modules/monitoring/application/locale/ 2> /dev/null
ln -s /usr/share/icingaweb2/modules/bayerisch/translation/icingaweb2/de_BY/ /usr/share/icingaweb2/application/locale/ 2> /dev/null
ln -s /usr/share/icingaweb2/modules/bayerisch/translation/director/de_BY/ /usr/share/icingaweb2/modules/director/application/locale 2> /dev/null
ln -s /usr/share/icingaweb2/modules/bayerisch/translation/map/de_BY/ /usr/share/icingaweb2/modules/map/application/locale 2> /dev/null

# Enable the module
icingacli module enable bayerisch 2> /dev/null

echo -e "\033[33mTo make the bavarian language available you have to restart your webserver.\033[0m"
echo -e "\033[33mIf you have a running PHP Service. Restart this, too.\033[0m"
