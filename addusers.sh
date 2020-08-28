while:
do
  read -p "Please enter prefix & password & num:" pre pass num
  printf "User info:
  ***********************************
  user prefix:    $pre
  user password:  $pass
  user num:       $num
  ***********************************
"

read -p "Are you sure?[y/n]" action
if ["$action" == "y"];then
  break
fi
done

for i in $(seq $num)
do
  user=${pre}${i}
  id $user &> /dev/null
  if [$? -ne 0];then
    useradd $user
    echo "$pass"|passwd --stdin $user &> /dev/null
    if [$? -eq 0];then
      echo -e "\033[31m$user\033[0m created"
    fi
  else
    echo "user $user exist"
  fi
done
