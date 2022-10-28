# aliases
alias xcopy="xclip -selection clipboard"
alias xpaste="xclip -selection clipboard -o"

alias speedtest="wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"

#functions
rawurlencode() {
  local string="${1}"
  local strlen=${#string}
  local encoded=""
  local pos c o

  for (( pos=0 ; pos<strlen ; pos++ )); do
     c=${string:$pos:1}
     case "$c" in
        [-_.~a-zA-Z0-9] ) o="${c}" ;;
        * )               printf -v o '%%%02x' "'$c"
     esac
     encoded+="${o}"
  done
  echo "${encoded}"
}
