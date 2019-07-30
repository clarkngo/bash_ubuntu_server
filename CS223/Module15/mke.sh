#! /bin bash
. mkmsettings.cfg

mke() {
  if [[ $ans =~ [^1] && $ans =~ [^2] ]]
  then
    return 0
  fi
  [[ $ans == 1 ]] && optName=$optName1 || optName=$optName2
  read -ep "Please enter the name of $optName: " name
  case $ans in
   1) mkdir $name;;
   2) touch $name;;
  esac
}
