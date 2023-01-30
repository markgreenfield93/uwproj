function checkanswer {
  if [[ $1 -gt $numfiles ]]
  then
    echo "Your guess is too high!"
  elif [[ $1 -lt $numfiles ]]
  then
    echo "Your guess is too low!"
  else
    echo "Exactly right, there are $numfiles files."
    guessright=1
  fi
}

numfiles=$(ls -1 | wc -l)
let guessright=0
while [[ $guessright -eq 0 ]]
do
  echo "Type a guess for the number of files in the current directory and press Enter: "
  read guess
  checkanswer guess
done
