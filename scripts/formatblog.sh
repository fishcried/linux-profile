#!/bin/bash
#
# The MIT License (MIT)
# Copyright (c) 2014 fishcried(tianqing.w@gmail.com)
#

# tag全部小写
sed -i '/^tags:/s/[A-Z]\+/\L&/g' *.md
sed -i '/^tags:/s/编辑器之神/vim/g' *.md
sed -i '/^tags:/s/c语言/c/g' *.md
sed -i '/^tags:/s/编码问题/编码/g' *.md
sed -i '/^tags:/s/问题解决/issue/g' *.md
sed -i '/^tags:/s/linux内核/kernel/g' *.md
sed -i '/^tags:/s/性能优化/性能调优/g' *.md
sed -i '/^tags:/s/系统调优/性能调优/g' *.md
sed -i '/^tags:/s/安全渗透/网络安全/g' *.md
sed -i '/^tags:/s/内核选项/kernel/g' *.md
sed -i '/^tags:/s/进程调度/进程/g' *.md
sed -i '/^tags:/s/进程管理/进程/g' *.md
sed -i '/^tags:/s/自动补全补全/自动补全/g' *.md
sed -i '/^tags:/s/html解析/html/g' *.md
sed  -i '/^category:/s/[Pp]rogramming [Dd]ebuging/程序设计/' *.md
sed  -i '/^category:/s/[Pp]rogramming [Dd]ebugging/程序设计/' *.md
sed -i '/^category:/s/[Pp]rogramming in [Cc]/程序设计/' *.md
sed -i '/^category:/s/[Pp]rogramming in [Ss]hell/程序设计/' *.md
sed -i '/^category:/s/[Pp]rogramming in [Pp]ython/程序设计/' *.md
sed -i '/^category:/s/问题解决/个人笔记/' *.md
sed -i '/^category:/s/榨取命令行/系统管理/' *.md
sed -i '/^category:/s/攻与防/网络安全/' *.md
sed -i '/^category:/s/linux内核/kernel/' *.md
sed -i '/^category:/s/编辑器之神/系统管理/' *.md
sed -i '/^category:/s/openstack/虚拟化/' *.md
sed -i '/^category:/s/活动/未分类/' *.md
sed -i '/^category:/s/读书笔记/个人笔记/' *.md
sed -i '/^category:/s/虚拟化/云计算/' *.md
