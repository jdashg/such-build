hg qpop -a

patches=`cat ../bridge/patches`
patches=`echo $patches | sed 's/[.][.][/]bridge[/]//g'`
echo "$patches" | xargs hg qdel

hg qdel hg-import-info
