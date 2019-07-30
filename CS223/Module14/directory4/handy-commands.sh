c() ## clear the terminal
{
  clear
}

a() ## list one file per line including files start with .
{
  ls -la
}

h() ## go HOME
{
  cd ~
}

d()
{
  date "+%A, %B %-d, %Y, %-I:%M %P"
}
