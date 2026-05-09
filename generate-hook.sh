echo "Generate Random secret"
echo $RANDOM | md5sum | head -c 20; echo;