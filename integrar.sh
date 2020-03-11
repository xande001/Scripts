#!/bin/bash

for dominio in $(cat $1)
do
	./criardominio.sh $dominio
	./criarsite.sh $dominio
	./CriarFtp.sh $dominio
done
