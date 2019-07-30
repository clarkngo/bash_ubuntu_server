#! /bin/bash
mkpd() {
  if [ ! -d "$1" ]
  then
    mkdir "$1"
  fi

  pushd "$1" 1>/dev/null
}

revisit() {
  local option
  dirs -v
  printf "Select an entry: "
  read option
  cd $(dirs -l "+$option") 1>/dev/null
}
