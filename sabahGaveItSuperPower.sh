#!/usr/bin/env bash
_autocomplete() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    mapfile -t COMPREPLY < <(compgen -f -- "$cur")
}

complete -F _autocomplete input

echo "What files to add:"
read -e files
git add $files
echo -e "\nWhat's the type of the commit:"
echo "1-Files added"
echo "2-Code fixed"
echo "3-Cleanup"
echo "4-Custom"
read c_num
case $c_num in
	1)
		echo -e "\nEnter commit description:"
		read commit_msg
		git commit -m "Files added: $commit_msg"
		;;
	2)
		echo -e "\nEnter commit description:"
		read commit_msg
		git commit -m "Code fix: $commit_msg"
		;;
	3)
		git commit -m "Cleanup"
		;;
	4)
		echo -e "\nEnter commit message:"
		read commit_msg
		git commit -m "$commit_msg"
		;;
	*)
		echo "wrong choice"
esac
git push
