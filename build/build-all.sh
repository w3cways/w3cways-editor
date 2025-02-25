#!/bin/bash

## 一键打包所有 package

# 获取 yarn dev/build 类型
buildType=build
if [ -n "$1" ]; then  
  buildType=$1
fi

cd ./packages

# core 要第一个打包
cd ./core
rm -rf dist # 清空 dist 目录
yarn "$buildType"

cd ../basic-modules
rm -rf dist # 清空 dist 目录
yarn "$buildType"



# editor 依赖于上述的 core + modules
cd ../editor
rm -rf dist # 清空 dist 目录
yarn "$buildType"
