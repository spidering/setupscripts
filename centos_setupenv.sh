#!/bin/bash
#cp /vagrant/defaultfiles/envinstall.pl $HOME
if [ -f $HOME/.bash_profile ]; then
    mv $HOME/.bash_profile $HOME/bash_profile.default
    cp /vagrant/defaultfiles/dotfiles/bash_profile $HOME/.bash_profile && source $HOME/.bash_profile
fi

#epel repository yum install --enablerepo=epel option needed
sudo cp /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.org
sudo sed -i.bak -e 's;enabled=1;enabled=0;g' /etc/yum.repos.d/epel.repo

#remi repository
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm


#fastestmirror
sudo cp /etc/yum/pluginconf.d/fastestmirror.conf /etc/yum/pluginconf.d/fastestmirror.conf.org
sudo sed -i.bak -e '$ a include_only=.jp' /etc/yum/pluginconf.d/fastestmirror.conf

#change timezone
sudo timedatectl set-timezone Asia/Tokyo

#nginx -- https://www.nginx.com/resources/wiki/start/topics/tutorials/install/
sudo tee /etc/yum.repos.d/nginx.repo <<-'EOF'
[nginxrepo]
name=Nginx Repository
baseurl=http://nginx.org/packages/centos/$releasever/$basearch/
enabled=1
gpgcheck=0
EOF

#docker -- https://docs.docker.com/engine/installation/linux/centos/
sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

#nodejs -- https://nodejs.org/en/download/package-manager/#enterprise-linux-and-fedora
sudo yum -y install nodejs npm --enablerepo=epel



if [ ! -d $HOME/.vim/colors ]; then
   mkdir -p $HOME/.vim/colors
fi


if [ ! -f $HOME/.vimrc ]; then
  #cp /vagrant/defaultfiles/dotfiles/vimrc $HOME/.vimrc
   touch $HOME/.vimrc
fi

if [ ! -f $HOME/.dir_colors ]; then
   sudo cp /etc/DIR_COLORS $HOME/.dir_colors
   sudo chown vagrant:vagrant $HOME/.dir_colors
fi

#
sudo yum -y groupinstall "Development tools"
sudo yum -y install cmake
sudo yum -y install openssl-devel
sudo yum -y install bzip2-devel
sudo yum -y install readline-devel
sudo yum -y install sqlite-devel
sudo yum -y install libxml2-devel
sudo yum -y install curl-devel
sudo yum -y install libjpeg-devel
sudo yum -y install libpng-devel
sudo yum -y install libXpm-devel
sudo yum -y install freetype-devel
sudo yum -y install libmcrypt-devel --enablerepo=epel
sudo yum -y install libtidy-devel --enablerepo=epel
sudo yum -y install libxslt-devel
sudo yum -y install perl-ExtUtils-Manifest


#plenv,pyenv,phpenv,rbenv -- environmental download and install

if [ ! -d $HOME/.plenv ]; then
    git clone https://github.com/tokuhirom/plenv.git $HOME/.plenv
    git clone https://github.com/tokuhirom/Perl-Build.git $HOME/.plenv/plugins/perl-build
fi

if [ ! -d $HOME/.pyenv ]; then
    git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv
    git clone https://github.com/yyuu/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv
fi

if [ ! -d $HOME/.rbenv ]; then
    git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
    git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
fi

if [ ! -d $HOME/.phpenv ]; then
     git clone https://github.com/CHH/phpenv.git
     cd $HOME/phpenv/bin && ./phpenv-install.sh
     #source $HOME/.zshrc
     git clone https://github.com/CHH/php-build.git $HOME/.phpenv/plugins/php-build
fi


#if [ ! -f $HOME/.zshrc ]; then
#  cp /vagrant/defaultfiles/zshrc $HOME/.zshrc
#fi

     #source "$HOME/.zshrc"

#. $HOME/envinstall.pl
/usr/bin/env perl /vagrant/defaultfiles/setupfiles/envinstall.pl 
