#!/bin/sh

cp -r completion ~/.zhongming_completion

echo << EOF >> ~/.bash_zhongming
if [ -d ~/.zhongming_completion ]; then
	for FILE in ~/.zhongming_completion/*.bash; do
		. $FILE
	done
fi
EOF
