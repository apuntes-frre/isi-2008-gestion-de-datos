import sys
import random
import os
"""
#Método: seek(byte) Mueve el puntero hacia el byte indicado.

archivo = open("entrada.txt", "r") 
contenido = archivo.read()
# el puntero queda 
# al final del documento
archivo.seek(0)

#Método: read([bytes]) Lee todo el contenido de un archivo. Si se le pasa la longitud de bytes, leerá solo el contenido hasta la longitud indicada.

archivo = open("entrada.txt", "r") 
contenido = archivo.read()
print contenido

#Método: readline([bytes]) Lee una línea del archivo.

archivo = open("entrada.txt", "r") 
linea1 = archivo.readline()
print linea1

#Método: readlines() Lee todas las líneas de un archivo.

archivo = open("entrada.txt", "r")
for linea in archivo.readlines():
    print linea

#Método: tell() Retorna la posición actual del puntero.

archivo = open("entrada.txt", "r") 
linea1 = archivo.readline()
mas = archivo.read(archivo.tell() * 2)
 
if archivo.tell() > 50:
    archivo.seek(50)


#Método: write(cadena) Escribe cadena dentro del archivo.

archivo = open("entrada.txt", "r+")
contenido = archivo.read()
final_de_archivo = archivo.tell()
 
archivo.write('Nueva linea')
archivo.seek(final_de_archivo)
nuevo_contenido = archivo.read()
 
print nuevo_contenido
# Nueva linea

"""
#Método: writelines(secuencia) Secuencia será cualquier iterable cuyos elementos serán escritos uno por línea.

print('Este programa Genera un .txt para ser importado por MySQL(valores por filas separados por comas)\n')
message = 'Ingrese las entradas solicitadas, pulse enter para continuar'
input(print(message.center(20,'=')+'\n'))
file =''
while file=='':
	file = input(print('Ingrese el nombre del archivo a crear sin extension .txt\n'+
					'\t por ejemplo: MiArchivo, ArchivoEjemplo\n'+
					'  NOTA: Tenga En cuenta los caracteres admitidos segun el SO para los nombres\n'))
	os.system('CLS')

x = eval(input('Ingrese cantidad(numero) de campos\n'))
os.system('CLS')
yes = 'S'
no = 'N'
op = yes
nombres=[]
tot_registros = 0
archivo = open(file+".csv", "w+")
contenido = archivo.read()
final_de_archivo = archivo.tell()
lista = list()

def leer_op():
	global op
	op = input('Ingrese S para continuar o N para finalizar\n')
	op = op.upper()
	os.system('CLS')
	return op
	pass
def validar_op():
	global op
	global no
	while op not in yes or op not in no:
		leer_op()
	return op 
for campo in range(x):
	name = input('Ingrese el nombre del campo '+ str(campo+1)+'\n')
	nombres.append(name)
	os.system('CLS')
while op in yes and op not in no:
	tot_registros+=1
	fila = ''
	
	for campo in range(x):
		print('Agregando registro nro:',tot_registros,'\n')
		fila= fila + input('Ingrese el valor de ' + str(nombres[campo])+'\n')+','
		os.system('CLS')
	lista.append(fila)
	leer_op()
archivo.writelines(lista)
archivo.seek(final_de_archivo)
archivo.close()

""" 
print archivo.readline()
# Línea 1
 
print archivo.readline()
# Línea 2


#Método: close() Cierra un archivo.

archivo = open("entrada.txt", "r") 
contenido = archivo.read()
archivo.close()
print contenido"""