#! /bin/bash

bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

# make sure to clean pipe
pipe="/tmp/cava.fifo"
if [ -p $pipe ]; then
    unlink $pipe
fi
mkfifo $pipe

# set bars number
if [[ $# -gt 0 ]]; then
  BARS="$1"
else
  BARS="12"
fi

# write cava config
if pgrep -f 'cava -p /tmp/polybar_cava_config' > /dev/null; then
  config_file="/tmp/polybar_cava_config_1"
else
  config_file="/tmp/polybar_cava_config"
fi
echo "
[general]
bars = $BARS

[output]
method = raw
raw_target = $pipe
data_format = ascii
ascii_max_range = 7
" > $config_file

# run cava in the background
cava -p $config_file &

# reading data from fifo
while read -r cmd; do
    echo $cmd | sed $dict
done < $pipe
