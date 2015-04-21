#!/bin/bash
#
# link: http://www.welefen.com/image-optimization.html
#

OPTI_PATH=$1
cd $OPTI_PATH;

CURRENT_PATH=$PWD;
SH_LIST='jpegtran gifsicle pngcrush';
COMMOND_EXIST=1

#先检查相关的软件是否已经正确安装

for ITEM in $SH_LIST
do
    SH_EXIST=`which $ITEM 2>/dev/null | wc -l`;
    if [[ $SH_EXIST == '0' ]]; then
        echo "$ITEM commond not exist";
        COMMOND_EXIST=0;
    fi
done

if [[ "COMMOND_EXIST" == "0" ]]; then
	exit 1;
fi

#优化jpg

JPG_FILES=`find . -type f -name "*.jpg" -or -name "*.jpeg"`;
for FILE in $JPG_FILES
do
    OUTPUT_FILE="$FILE.png"
    jpegtran -optimize -progressive -copy none -outfile $OUTPUT_FILE $FILE > /dev/null
    mv $OUTPUT_FILE $FILE
done

#优化gif

GIF_FILES=`find . -type f -name "*.gif"`;
for FILE in $GIF_FILES
do
    DEPTH=`identify $FILE | wc -l`;
    if [[ "$DEPTH" == "1" ]]; then
        OUTPUT_FILE="$FILE.png";
        OUTPUT_FILE_LEN=${#OUTPUT_FILE}-8;
        NEW_FILE_SUB=${OUTPUT_FILE:0:$OUTPUT_FILE_LEN};
        NEW_FILE="$NEW_FILE_SUB.png"
        convert $FILE $NEW_FILE > /dev/null;
    else
        OUTPUT_FILE="$FILE.gif"
        gifsicle -o $OUTPUT_FILE $FILE > /dev/null
        mv $OUTPUT_FILE $FILE
    fi
done

#优化png

PNG_FILES=`find . -type f -name "*.png"`;
for FILE in $PNG_FILES
do
    OUTPUT_FILE="$FILE.png"
    pngcrush -rem alla -brute -reduce $FILE $OUTPUT_FILE > /dev/null
    mv $OUTPUT_FILE $FILE
done

cd $CURRENT_PATH;
