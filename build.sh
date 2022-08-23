#!/bin/bash
###############################################################################
#FileName：build-talent-assessment.sh
#Function: build talent assessmen img for docker
#Parameter: NULL
#Return: NULL
#Author: gangliucr@isoftstone.com
#Version: 1.1
#Company: 西安软通动力网络技术有限公司
#Date: 2022/7/28
#Des: 本示例针对openEuler 20.03 LTS SP3的容器镜像
###############################################################################

CWD=$(dirname $0)
cd ${CWD}
PWD=$(pwd)


arch=`uname -m`
openeuler_version="openEuler-20.03-LTS-SP3"
openeuler_docker_version="openeuler-20.03-lts-sp3"
docker_name=$1
pkg_version=$2
nginx_conf="nginx.conf"
dist_pkg="dist.zip"
docker_file="Dockerfile"
talent_image="talent-assessment-image"


function main()
{
    
    # 检查编译环境是否已经安装了docker-engine
    #check_docker_service
    
    # 下载docker基础镜像
    #download_docker_img
    
    # 编译src文件
    build_src
    
    # 检查文件
    #echo "3. Checking all files."
    #check_pkgs "${PWD}" "${nginx_conf}"
    #check_pkgs "${PWD}" "${dist_pkg}"
    #check_pkgs "${PWD}" "${docker_file}"
    
    # 导入基础镜像
    #import_docker_img
    
    # 构建人才认定镜像
    build_talent_img
    
    # 导出人才认定镜像
    export_talent_img
}


function check_docker_service()
{
    echo "1. Check docker service."
    pkg_reult=`rpm -qa | grep docker-engine`
    if [ "${pkg_reult}" != "" ]; then
        echo "Docker-engine has installed."
    else
        echo "Docker-engine has not installed."
        install_docker_pkg
    fi
}

function install_docker_pkg()
{
    echo "Installing docker-engine."
    yum install docker-engine npm -y
    if [ $? -eq 0 ]; then
        systemctl start docker
        echo "Install docker-engine success."
    else
        echo "Install docker-engine failed."
        exit 1
    fi
}

function download_docker_img()
{
    echo "2. Downloading the openEuler-docker.${arch}.tar.xz."
    rm -rf ${PWD}/openEuler-docker.${arch}.tar.xz
    wget https://repo.openeuler.org/${openeuler_version}/docker_img/${arch}/openEuler-docker.${arch}.tar.xz
}


function build_src()
{
   #cd ${PWD}/talent-certificate
   cd ${PWD}
   tar -czf talent-certificate.tar.gz talent-certificate/
   #yum install npm -y
   #npm install --no-optional --verbose
   #if [ $? -eq 0 ]; then
   #     echo "npm install success."
   #else
   #     echo "npm install failed."
   #     exit 1
   #fi
   #npm run build
   #if [ $? -eq 0 ]; then
   #     echo "npm run build success."
   #else
   #     echo "run build failed."
   #     exit 1
   #fi
   #if [ -d "dist" ]; then
   #     echo "zip dist package."
   #     zip -r ../dist.zip dist/
   #     cd -
   #else
   #     echo "dist dir is not exist."
   #     exit 1
   #fi

}

function check_pkgs()
{
    pkg=$1
    if [ -e "${pkg}" ]; then
        echo "The ${pkg} already exists."
    else
        echo "The ${pkg} does not exist."
        exit 1
    fi
}

function import_docker_img()
{
    echo "4. Import docker base images."
    docker images | grep ${openeuler_docker_version} | grep latest
    if [ $? -eq 0 ]; then
        echo "Docker base image has imported."
    else
        docker load -i "openEuler-docker.${arch}.tar.xz"
        if [ $? -eq 0 ]; then
            echo "Import docker base images success."
        else
            echo "Import docker base images failed."
            exit 1
        fi
    
    fi
}

function build_talent_img()
{
    echo "5. Building the talent image."
    docker rmi "${docker_name}:${pkg_version}" >/dev/null 2>&1
    docker build -t "${docker_name}:${pkg_version}" .
    if [ $? -eq 0 ]; then
        echo "Building the talent image success."
    else
        echo "Building the talent image failed."
        exit 1
    fi
}



function export_talent_img()
{
    echo "6. Export talent imgages."
    rm -rf ${PWD}/build_reuslt >/dev/null 2>&1 
    mkdir ${PWD}/build_reuslt/
    docker images | grep "${docker_name}" | grep "${pkg_version}"
    if [ $? -eq 0 ]; then
        docker save -o "${PWD}/build_reuslt/${talent_image}.tar"  "${docker_name}:${pkg_version}"
        sleep 30
        check_pkgs "${PWD}/build_reuslt/${talent_image}.tar"
    else
        echo "Export talent imgages failed."
        exit 1
    fi
}

main
if [ $? -eq 0 ]; then
    echo "Building talent image success."
    echo "The build result is in ${PWD}/build_reuslt/${talent_image}.tar"
    rm -rf ${PWD}/openEuler-docker.${arch}.tar.xz
    docker stop $(docker ps -aq) >/dev/null 2>&1 
    docker rm $(docker ps -aq) >/dev/null 2>&1 
    sleep 3
    docker rmi -f $(docker images -aq) >/dev/null 2>&1
    docker load -i "${PWD}/build_reuslt/${talent_image}.tar"
    rm -rf ${PWD}/talent-certificate.tar.gz
else
    echo "Building talent image failed."
    exit 1
fi
