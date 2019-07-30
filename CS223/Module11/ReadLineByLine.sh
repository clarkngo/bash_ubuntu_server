#! /bin/base
readLine() {
  echo "Please enter the file name: "
  read fileName
  printf "\n------ File Start -----\n"
  while read
  do
    echo $REPLY
  done < $fileName
  printf "\n----- File Finish -----\n"
}

readCsv() {
  echo "Please enter the file name: "
  read fileName
  printf "\n----- File Start -----\n"
  while IFS=, read name address phone
  do
    printf "Name: %-10s\tAddress: %15s\tPhone: %s\n" "$name" "$address" "$phone"
  done < $fileName
  printf "\n----- File Finish -----\n"
}
