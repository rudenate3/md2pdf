#!/bin/sh -u

temp_file=$(mktemp)

echo 'Enter URLs to raw MarkDown files'

while read -p 'Enter URL: ' md; do
  if [ -z $md ]; then
        break
  fi
  curl $md >> ${temp_file}
  echo '\n\n\n' >> ${temp_file}
done

read -p 'Name of epub: ' epub_name
read -p 'Image: ' image

cat $temp_file > temp.md

pandoc -o ./$epub_name.epub temp.md --epub-cover-image=$image

rm temp.md
rm ${temp_file}