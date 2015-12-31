#!/bin/bash


clear
while true; do
echo "==========================================================
       	Escolha uma das opções!: 
	1 - Sublime Text 3
	2 - Gimp
	3 - Pencil
	4 - Xmind
	5 - Virtualenv + workspace
	6 - Todas as opções
	0 - Sair
==========================================================="

sublime_text(){
	sudo add-apt-repository ppa:webupd8team/sublime-text-3 &&
	sudo apt-get update &&
	sudo apt-get install sublime-text-installer
}

gimp(){
	sudo sudo add-apt-repository ppa:otto-kesselgulasch/gimp &&
	sudo apt-get update &&
	sudo apt-get install gimp
}

pencil(){
	wget https://evoluspencil.googlecode.com/files/evoluspencil_2.0.5_all.deb &&
	sudo dpkg -i evoluspencil_2.0.5_all.deb
}

xmind(){
	wget http://www.xmind.net/xmind/downloads/xmind-7-update1-linux_i386.deb &&
	sudo dpkg -i xmind-7-update1-linux_i386.deb
}

virtualenv_work(){
	sudo pip install virtualenv &&
	mkdir workspace && mkdir workspace/limbo && mkdir workspace/modeling && mkdir workspace/node && mkdir workspace/ruby && mkdir workspace/python
}


echo -n ">>>: "

read option


#verifica se foi digitado uma opção
if [ -z $option ]; then
	echo "ERRO: Digite uma opção, sendo que e aceito apenas numeros inteiros."
	exit
fi

case $option in
	1)	echo "ATENÇÃO: instalando sublime text 3" && sleep 2 && clear &&
		sublime_text;;

	2)	echo "ATENÇÃO: instalando gimp" && sleep 2 && clear && 
		gimp;;

	3)	echo "ATENÇÃO: instalando pencil" && sleep 2 && clear &&
		pencil;;

	4)	echo "ATENÇÃO: instalando xmind" && sleep 2 && clear &&
		xmind;;

	5)	echo "ATENÇÃO: instalando virtualenv + workspace" && sleep 2 && clear &&
		virtualenv_work;;

	6)	echo "ATENÇÃO: instalando todas as opções" && sleep 2 && clear &&
		echo "ATENÇÃO: instalando sublime text 3" && sublime_text &&
		echo "ATENÇÃO: instalando gimp" && gimp &&
		echo "ATENÇÃO: instalando pencil" && pencil &&
		echo "ATENÇÃO: instalando xmind" && xmind &&
		echo "ATENÇÃO: instalando virtualenv + workspace" && virtualenv_work;;

	0)	echo "ATENÇÃO: fechando script..."
		sleep 2
		exit;;

	*)	echo
		echo "ERRO: opção invalida, tente novamente"
		echo;;
esac
done
