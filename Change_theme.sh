#/bin/bash
old=`cat ~/now`
echo "old theme number: "
echo $old
#read -p "Please input a number theme(1 ~ 183): " num
new=$(($old+1))

if [ $new -gt 183 ]
then
	new=1
fi

echo "new theme number: "
echo $new
echo $new > now
theme=`ls $HOME/iTerm2-Color-Schemes/xrdb/ | cat | head -$new | tail -1`
echo "Your new theme name is: $theme"
mv ~/.Xresources ~/.Xresources_bak
cp ~/.Xresources_set ~/.Xresources
cat $HOME/iTerm2-Color-Schemes/xrdb/"$theme" >> .Xresources
cat .theme >> .Xresources
echo "Your new theme is set, please hit Super-t to check, have fun! :)"
xrdb -merge ~/.Xresources
