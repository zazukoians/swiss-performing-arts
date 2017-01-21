# Note that the only unicode file is STC_fulldataset.csv
for file in *.csv
do
  iconv -f latin1 -t utf8 "$file" >"$file.new" &&
  mv -f "$file.new" "$file"
done
