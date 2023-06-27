touch ${1..5}.html

for f in *.html
do
echo "${f%.html}"; #print file without .html extention.
mv "$f" "${f%.html}.php"
done
