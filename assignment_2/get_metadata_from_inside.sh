DATA=$1
curl http://169.254.169.254/latest/meta-data/$DATA
echo -e "\n"
