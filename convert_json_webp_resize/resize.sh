# #!/bin/sh
# # python3 runapp.py

# $arr = ['agree.webp', 'awesome.webp', 'disagree.webp', 'duoccualo.webp', 'louderplease.webp', 'omg.webp', 'searching.webp', 'slowerplease.webp', 'sparkling.webp', 'wow.webp']
# for i in $(seq 1 $arr); do
# 	echo $i
# 	# magick result/$i.webp -layers coalesce -resize 200x200 resize/$i.webp
# done

# rename files in folder data to lowercase
for i in $(ls data); do
    mv data/$i data/$(echo $i | tr '[:upper:]' '[:lower:]')
done


#!/bin/bash

# // get file in folder
# for i in $(ls result); do
#     echo $i
#     magick result/$i -layers coalesce -resize 336x336 resize/$i
# done


# arr=('agree.webp' 'awesome.webp' 'disagree.webp' 'duoccualo.webp' 'louderplease.webp' 'omg.webp' 'searching.webp' 'slowerplease.webp' 'sparkling.webp' 'wow.webp')

# for i in "${arr[@]}"; do
#     echo "$i"
#     # magick result/"$i" -layers coalesce -resize 512x512 resize/"$i"
# done
