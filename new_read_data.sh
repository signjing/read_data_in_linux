#!/bin/bash

# 读取文件头行，存于一个数组中
tablehead=(`head -n 1 new_data.txt`)

# 从文件第二行开始读取，按上述数组顺序读取各字段
tail -n +2 new_data.txt | while read ${tablehead[*]}
do
    # 遍历数组的下标，获取tablehead数组的对应值，以及以该值命名的变量的值
    for i in `seq 0 $((${#tablehead[@]}-1))`
    do
        temp=${tablehead[$i]}
        echo "${temp}:${!temp}"
    done
    echo ""
done

