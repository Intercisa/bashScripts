echo "\$\$ pid = $$ BASHPID = $BASHPID"

for ((i=0; i<=5; i++)); do echo "BASH_VERSINFO[$i] = ${BASH_VERSINFO[$i]}"; done


echo $BASH_VERSION


echo $EDITOR

func_name() {
	echo "This function is $FUNCNAME"
}

echo "You are assinged to the following groups:"
for group in ${GROUPS[@]}; do
  IFS=: read -r name dummy number members < <(getent group $group )
  printf "name: %-10s number: %-15s members: %s\n" "$name" "$number" "$members"
done

IFS=","
INPUTSTR="a,b,c,d"
for field in ${INPUTSTR}; do
  echo $field
done


echo $SECONDS


