#!/bin/bash

# GitDork.sh
# CLI utility for printing clickable URLs to the terminal for quicker Git Dorking.

# By TrashPuppy 2024

# USE: bash gitdork.sh <domain name>
# OR : bash gitdork.sh then enter your domain name into the prompt

echo ''
echo '            :-- GITHUB DORK LINKS --:'
echo ''

# Variable Declaration
if [[ -z "$1" ]]; then
	echo ":-- Enter domain to dork: "
	read -a input
else
	input=$1
fi

# Build URL query based on regex:
if [[ "$input" =~ ([\.]) ]]; then

	IFS='.' read period_replaced_by_space_fuq_u_bash <<< $input
	IFS=' ' read domain tld <<< $period_replaced_by_space_fuq_u_bash

	# Check if they want the entire domain in the query:
	echo ":-- Do you want to dork the entire domain name? Ex: ('target.com'): y/n"
	read -a tldin

	if [[ "$tldin" = 'y' ]]; then
		domain_string=$(echo "/\b$domain\\.$tld/")
#		echo $domain_string
	else
		domain_string=$(echo "/\b$domain/")
#		echo $domain_string
	fi
else
	domain_string=$(echo "/\b$input/")
fi

# Rest of the URL:
url_start='https://github.com/search?q='
url_end='&type=code'

# Query Parameters:
read -r -d '' PAR <<- EOM
	.bash_history
	.exs
	.sls
	FTP
	PWD
	SECRET_KEY
	api_key
	app_secret
	aws_access_key
	aws_access_key_id
	bashrc password
	beanstalk.yml
	client_secret
	config
	composer.json
	credentials
	db
	deploy.rake
	dockercgf
	git-credentials
	github_token
	htpasswd
	id_rsa
	mysql
	npmrc_auth
	passwd
	password
	pem
	private
	s3.yml
	s3cfg
	secret
	secrets
	sshd_config
	token
	username
	xoxa
	xoxb
	xoxp
EOM

echo ""
echo -e "\033[32mJust the domain\033[0m :-- $url_start$domain_string$url_end"

for line in $PAR; do
	echo -e "\033[32m$line\033[0m :-- $url_start$domain_string+$line$url_end"
done
