#! /bin/bash

initialize() {

CMD=`curl http://169.254.169.254/latest/meta-data/$DATA`

}

get_details() {

ssh -i $KEY $USER@$IP "$CMD"

}




while getopts ":u:k:i:d:h" opt; do
  case $opt in
    u)
      USER=$OPTARG
      ;;
    k)
      KEY=$OPTARG
      ;;
    i)
      IP=$OPTARG
      ;;
    d)
      DATA=$OPTARG
      ;;
    h)
      usage
      exit 0
      ;;
    *)
      echo 'Incorrect arguments provided'
      usage
      exit 1
      ;;
  esac
done

if [ ! "${USER" -a ! "${KEY}" -a ! "${IP}" ]; then
   echo -e 'Value should be provided for all three parameters User, Key, IP\n'
   exit 1
fi

initialize
get_details
