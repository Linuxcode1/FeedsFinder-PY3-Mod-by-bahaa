VERSION=3.11

PYTHON_VERSION=$(python -c"import platform; print(platform.python_version())")



echo "#########################################################"
echo "#               FeedsFinder PY3 Mod BY                  #"
echo "#                   BAhaa LinuXcode                     #"
echo "#########################################################"


rm -rf /usr/lib/enigma2/python/Plugins/Extensions/FeedsFinder > /dev/null 2>&1
if [ "$PYTHON_VERSION" == 3.9.9 -o "$PYTHON_VERSION" == 3.9.7 ]; then
echo ":You have $PYTHON_VERSION image ..."
wget -q --no-check-certificate 'https://docs.google.com/uc?export=download&id=11ps5Yy2tQ7vh0SElhaz7ZfJVEtX43cSe' -O /tmp/FeedsFinder-Mod-LinuXcode.tar.gz;
tar -xzf /tmp/FeedsFinder-Mod-LinuXcode.tar.gz -C /
rm -f /tmp/FeedsFinder-Mod-LinuXcode.tar.gz


elif [ "$PYTHON_VERSION" == 3.10.4 ]; then
echo ":You have $PYTHON_VERSION image ..."

wget -q --no-check-certificate 'https://docs.google.com/uc?export=download&id=1uWWj8SGbt-AmqFM0bMlWmCPYepQ7cnn-' -O /tmp/FeedsFinder-Mod-LinuXcode.tar.gz
tar -xzf /tmp/FeedsFinder-Mod-LinuXcode.tar.gz -C /
rm -f /tmp/FeedsFinder-Mod-LinuXcode.tar.gz


elif [ "$PYTHON_VERSION" == 3.11.0 ]; then
echo ":You have $PYTHON_VERSION image ..."
wget -q --no-check-certificate 'https://docs.google.com/uc?export=download&id=17VFTl3fsPUpDqz-7xtDiCzrtd48Alyg7' -O /tmp/FeedsFinder-Mod-LinuXcode.tar.gz
tar -xzf /tmp/FeedsFinder-Mod-LinuXcode.tar.gz -C /
rm -f /tmp/FeedsFinder-Mod-LinuXcode.tar.gz

else
exit 1
fi

echo ""
echo "#########################################################"
echo "#     FeedsFinder $VERSION INSTALLED SUCCESSFULLY       #"
echo "#                Mod BY BAhaa LinuXcode                 #"
echo "#########################################################"
echo "#                Restart Enigma2 GUI                    #"
echo "#########################################################"
sleep 2
if [ $OS = 'DreamOS' ]; then
systemctl restart enigma2
else
killall -9 enigma2
fi
exit 0
