echo "enter the password"
read password
len="${#password}"
if test $len -ge 8; then
 echo "$password" | grep -q [0-9]
  if test $? -eq 0 ; then
   echo "$password" | grep -q [A-Z]
    if test $? -eq 0 ; then
     echo "$password" | grep -q [a-z]
      if test $? -eq 0 ; then
        echo "strong passwod"
      else

        echo "weak password -> shd include small letters"


      fi
   else
      echo "weak password -> shoud include a capital letter"
   fi
  else

   echo "weak password -> should include numbers"
  fi
 else
 echo "Weak password -> password should have atleast 8 characters"
fi

