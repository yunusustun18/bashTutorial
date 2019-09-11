#!/bin/bash

for ((i = 0; i < 237; i++)); do
    toplam=$(cat /proc/meminfo | head -1 | awk '{print $2}')
    kullanilan=$(cat /proc/meminfo | head -4 | tail -1 | awk '{print $2}')
    echo "$toplam,$kullanilan" >>ram.txt
done

echo "<head>Baslik Buraya</head><body><table border='2'<tr>" >>ram.html
echo "<td>toplam ram</td>" >>ram.html
echo "<td>kullanilan ram</td></tr>" >>ram.html

cat ram.txt | while read line; do
    toplam=$(echo $line | cut -d ',' -f1)
    kullanilan=$(echo $line | cut -d ',' -f2)
    echo "<tr><td>$toplam</td><td>$kullanilan</td></tr>" >>ram.html
done
echo "</table></body>" >>ram.html
