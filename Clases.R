#(Clase 1) Comandos básicos, Asignación de variables, tipo de datos y operaciones

#Print
print("Hola mundo")
"hola mundo"

#Help
help(summary)
mean() #Sombreas + FI

#Para saber donde está el directorio de trabajo
getwd()

#Cambiamos nuestro directorio de tabajo
setwd("C:/Users/Ismael/Documents/GitHub/Mis_clases")

#Para limpiar la consola: control + L

#Asignación de Variables y Tipos de datos
#Numeric
x<- 10.5
class(x)
x<-123
class(x)
#Integer
x<-100L
class(x)
#Complex
x<- 9i + 3
class(x)
#Character/string
x<- "Si te gusta el video dejame un like"
class(x)
#Logical/boolean
x<- TRUE
class(x)

#Cambio de tipo de datos
x<- 61.5
class(x)
x<- as.character(x)
x<- as.numeric(x)
x<- as.complex(x)
x<- as.integer(x)
x<- as.logical(x)
x<- FALSE

#Operadores aritmeticos
5+5 
7-2
7*9
12/5
5^2
5%%2 #Para obtener el residuo
35%/%2 #División entera
abs(-10) #Valor absoluto
log(100) #Logaritmo neperiano
log10(100)

#Operadores de comparación
5==5
5!=7
7>9
7<9
7>=9
7<=9

#Operaciones con asignación 
x<- 12
y<- 5

x+y
x*y
x/y
x^y
x<y
print(x+y)

#Para eliminar una variable
rm(list = c("x"))
#Para eliminar dos o más variables
x<- 12
y<- 5
z<- 6
rm(list = c("x","y"))
#ls: sirve para conocer objetos existentes
ls()
#Eliminamos todos los objetos
rm(list = ls())

#Redondeo
#ceilling: redondea un número hacia arriba a su entero más cercano
ceiling(2.4)
#floor: redondea un número hacia abajo a su entero más cercano
floor(2.4)

#String 
a<- "Aprediendo a 
programar"
a
cat(a)
#Para encontrar el número de caracteres de una cadena
nchar(a)

#grepl: verifica si un caracter o una secuencia de 
#caracteres están presentes en una cadena
a<- "Hoy voy a pasear a mi gran perro que tiene 1 año"
grepl("H",a)
grepl("gran", a)
grepl(1,a)
grepl(5,a)

#paste(): función para fusionar o concatenar dos cadenas:
a<- "Mi hobby es"
b<- "tocar la guitarra"
paste(a,b)
c<- paste(a,b)
print(c)
c

###############################################################################
#(Clase 2) Vectores

#Vectores numeric
numeros<- c(20,5,8)
numeros
class(numeros)
#Para crear un vector con una secuencia de números
numeros<- 3:10
numeros
numeros<- c(3:10)
#Vectores con decimales
#Cuando pertenece el último elemento a la secuencia
numero1<- c(1.5:6.5)
numero1
#cuando no pertenece el ultimo elemento a la secuencia
numero2<- c(1.5:6.3)
numero2
#Generación de vectores secuenciados 
numeros<- seq(from=0, to=100, by=20)
numeros
numeros<- seq(0,100, by=20)
#Para repetir cada elemento del vector
rep_each<- rep(c(1,2,3), each=3)
rep_each
#Repite la secuencia del vector
rep_times<- rep(c(1,2,3), times=3)
rep_times
#Repetimos cada valor de forma independiente
rep_independiente<- rep(c(1,2,3), times=c(5,2,1))
rep_independiente

#Vectores character
frutas<- c("manzana","naranja","fresa","pera")
class(frutas)

#Vector de valores logicos
vec_logico<- c(TRUE, FALSE, T, F)
class(vec_logico)

#Para saber cuantos elementos tiene un vector 
numeros<- c(20,5,8)
frutas<- c("manzana","naranja","fresa","pera")
vec_logico<- c(TRUE, FALSE, T, F)

length(numeros)
length(frutas)
length(vec_logico)

#Ordenamos los elementos de un vector
numeros<- c(20,5,8)
frutas<- c("manzana","naranja","fresa","pera")
vec_logico<- c(TRUE, FALSE, T, F)

sort(numeros)
sort(frutas)
sort(vec_logico)

#Accedemos a un elemento del vector
numeros<- c(20,5,8)
frutas<- c("manzana","naranja","fresa","pera")
vec_logico<- c(TRUE, FALSE, T, F)

numeros[3]
frutas[2]
vec_logico[4]

#Accedemos a varios elementos del vector
numeros<- c(20,5,8,10,15,7)
frutas<- c("platano", "manzana", "naranja", "mango", "limon")
vec_logico<- c(TRUE, FALSE, T, F,T,F)

numeros[c(2,5)]
frutas[c(1,3)]
vec_logico[c(3,4)]

#Acceder a todos los elementos excepto a los especificados 
numeros<- c(20,5,8,10,15,7)
frutas<- c("platano", "manzana", "naranja", "mango", "limon")
vec_logico<- c(TRUE, FALSE, T, F,T,F)

numeros[c(-1)]
frutas[c(-1,-2)]
vec_logico[c(-1,-3)]

#Cambiamos el elemento de un vector
numeros<- c(20,5,8,10,15,7)
frutas<- c("platano", "manzana", "naranja", "mango", "limon")
vec_logico<- c(TRUE, FALSE, T, F,T,F)

numeros[2]<- 23
frutas[1]<- "mandarina"
vec_logico[3]<- F

#Jerarquía (character > numeric > logical)
error1 <- c("Angela", "Carlos", 22, "Contabilidad",FALSE,TRUE)
class(error1)
error2 <- c(23,T,FALSE)
class(error2)

#Operaciones con vectores
vec1<- c(1,5,6,30)
vec2<- c(5,10,3,2)

vec3<- vec1 + vec2
vec3<- vec2 - vec1
vec3<- vec1*vec2
vec3<- vec1/vec2

#Operamos vectores con diferente logitud
vec1<- c(1,5,6,30)
vec2<- c(5,10,3,2,10,15)

#R agarrará los valores del inicios hasta completar la longitud del otro vector
vec3<- vec1 + vec2


###############################################################################
#(Clase 3) Listas

#Una lista en R puede contener muchos tipos de datos diferentes
milist<- list("Angela", "Carlos", "Allison", 20, 25, 23)
milist2<- list(c("Angela", "Carlos","Allison"), c(20,25,23))
milist3<- list(nombres= c("Angela", "Carlos","Allison"), edades= c(20,25,23))

#Accesos a elementos de una lista
milist<- list("Angela", "Carlos", "Allison", 20, 25, 23)
milist2<- list(c("Angela", "Carlos","Allison"), c(20,25,23))
milist3<- list(nombres= c("Angela", "Carlos","Allison"), edades= c(20,25,23))

milist[1]
milist[c(2,4)]

milist2[[1]]
milist2[c(1,2)]
milist2[[c(1,2)]]

milist3[1]
milist3[[1]]
milist3[c(1,2)]
milist3[[c(1,2)]]
milist3[["edades"]]

#Cambiamos un elemento de la lista
milist<- list("Angela", "Carlos", "Allison", 20, 25, 23)
milist2<- list(c("Angela", "Carlos","Allison"), c(20,25,23))
milist3<- list(nombres= c("Angela", "Carlos","Allison"), edades= c(20,25,23))

milist[1]<- "Pamela"

milist2[[1]]<- c("Pamela","Juan","Shirley")

milist3[["edades"]]<- c(25,30,18)
milist3[[2]]<- c(21,28,24)

#Para saber cuántos elementos tiene una lista
milist<- list("Angela", "Carlos", "Allison", 20, 25, 23)
milist2<- list(c("Angela", "Carlos","Allison"), c(20,25,23))
milist3<- list(nombres= c("Angela", "Carlos","Allison"), edades= c(20,25,23))

length(milist)
length(milist2)
length(milist3)

#Para saber si un elemento especifico está presente en una lista usamos
milist<- list("Angela", "Carlos", "Allison", 20, 25, 23)
milist2<- list(c("Angela", "Carlos","Allison"), c(20,25,23))
milist3<- list(nombres= c("Angela", "Carlos","Allison"), edades= c(20,25,23))

"Esteban" %in% milist
"Angela" %in% milist2[[1]]
20 %in% milist3[[2]]
  
#Para agregar un elemento al final de la lista, usamos append()
milist<- list("Angela", "Carlos", "Allison", 20, 25, 23)
milist2<- list(c("Angela", "Carlos","Allison"), c(20,25,23))
milist3<- list(nombres= c("Angela", "Carlos","Allison"), edades= c(20,25,23))

append(milist, "Pamela")
append(milist[1], "Pamela")

append(milist2, "Juan")
append(milist2[[1]], "Juan")

append(milist3, 3)
append(milist3[[2]], 3)

#Eliminar elementos de la lista
milist<- list("Angela", "Carlos", "Allison", 20, 25, 23)
milist2<- list(c("Angela", "Carlos","Allison"), c(20,25,23))
milist3<- list(nombres= c("Angela", "Carlos","Allison"), edades= c(20,25,23))

newlist<- milist[-1]
newlist2<- milist2[[-1]]
newlist3<- milist3[[-2]]

#Unir dos listas 
list1<- list("Rosa", "Jesus", "Carmen")
list2<- list(21,23,26)
list3<- c(list1, list2)

###############################################################################
#(Clase 4) Matrices

#Matriz numeric
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

#Matriz character
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

#Accedemos a los elementos de una matriz
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

numatrix[2,2]
numatrix[1,] #Mostramos la fila 1
numatrix[,2] #Mostramos la columna 2

animalmatrix[1,2]
animalmatrix[2,] #Mostramos la fila 2
animalmatrix[,2] #Mostramos la columna 2

#Acceda a más de una fila y columna
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

numatrix[c(1,2),] #Muestro la fila 1 y 2
animalmatrix[,c(1,3)] #Muestro la columna 1 y 3

#Longitud de la matriz
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

length(numatrix)
length(animalmatrix)

#Para agregar filas adicionales usamos rbind()
#Ejemplo 2
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

numatrix2<- rbind(numatrix, c(23,27))

animalmatrix2<- rbind(animalmatrix, c("coala", "tigre","perro"))
#Las celdas de la nueva fila deben tener la misma longitud 
#que la matriz existente.


#Usamos cbind() para agregar columnas adicionales en la matriz
#Ejemplo 1
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

numatrix2<- cbind(numatrix, c(23,27,13,14))

animalmatrix2<- cbind(animalmatrix, c("coala", "tigre","perro"))
#Las celdas de la nueva columna deben tener la misma longitud 
#que la matriz existente.

#Eliminamos filas y columnas
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

numatrix<- numatrix[-c(1),-c(1)] #Removerála primera fila y la primera columna

animalmatrix<- animalmatrix2[,-c(2)] #Eliminará la columna 2

#Compruebe si existe un elemento en la matriz
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

23 %in% numatrix
"lobo" %in% animalmatrix

#Utilizamos dim() para saber la cantidad de filas y columnas en una matriz
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

dim(numatrix)
dim(animalmatrix)

#Jerarquía (character > numeric > logical)
error1<- matrix(c("león", "5", 6, 21,8,20, TRUE, FALSE), nrow=2, ncol=4)
error2<- matrix(c(5,TRUE, FALSE, T, F,F), nrow=2, ncol=3)

#Combinar dos matrices con filas
#tienen que tener la misma cantidad de columnas
numatrix<- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), nrow=4, ncol=3)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

combinar_matrix<- rbind(numatrix, animalmatrix)

#Combinar dos matrices con columnas
#Tienen que tener la misma cantidad de filas
numatrix<- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), nrow=3, ncol=4)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

combinar_matrix2<- cbind(numatrix, animalmatrix)

#Operaciones con matrices
numatrix<- matrix(c(22,8,15,12), nrow = 2, ncol = 2)
numatrix2<- matrix(c(2,4,5,6), nrow = 2, ncol= 2 )

numatrix + numatrix2
numatrix - numatrix2
numatrix %*% numatrix2
numatrix / numatrix2
5*numatrix

###############################################################################
#(Clase 5) Factores 

#Factores se utilizan para categorizar los datos. Ejemplos:
#Sexo: masculino/femenino
#Música: Rock, Pop, Clásica, Jazz
#País: Perú, Argentina, España, Francia

#Para crear un factor usamos factor() 
music_genre<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))
#Para imprimir solo los niveles hacemos
levels(music_genre)

#También se puede establecer los niveles
music_genre<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"),
                     levels= c("Classic","Jazz","Pop",
                               "Rock","Otros"))

levels(music_genre)

#Longitud del factor
music_genre<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))

length(music_genre)

#Tabla de frecuencia
music_genre<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))

table(music_genre)

#Factores de acceso 
music_genre<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))

music_genre[3]
music_genre[-1]

#Cambiar el valor de un item
music_genre<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))

music_genre[3]<- "Pop"

#Tenga en cuenta que no puede cambiar el valor de un 
#artículo específico si aún no está especificado en el factor.
#El siguiente ejemplo producirá un error:
music_genre<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))

music_genre[3]<- "Opera"

#Tenemos que especificarlo dentro de levels
music_genre <- factor(c("Jazz", "Rock", "Classic",
                        "Classic", "Pop", "Jazz", "Rock", 
                        "Jazz"), 
                      levels = c("Classic", "Jazz", "Pop", 
                                 "Rock", "Opera"))

music_genre[3]<- "Opera"

#Juntando dos factores
dias_factor<- factor(c("lunes", "martes", "miercoles", "juves",
                     "viernes", "sabado", "domingo"))

clases_factor<- factor(c("martes", "juves", "sabado"))

diasclass_factor<- factor(clases_factor, levels= dias_factor)

table(diasclass_factor)

###############################################################################
#(Clase 6) Data.Frames

#Son datos que se muestran en formato de tabla
#Pueden tener diferentes tipos de datos en su interior. 
#Mientras que la primera columna puede ser character, 
#la segunda y la tercera pueden ser numeric o logical.
#Sin embargo, cada columna debe tener el mismo tipo de datos

#Forma 1
trabajadores<- c("Angela", "David", "Melanie", "Hector","Emma")
edades<- c(22,23,24,26,25)
hijos<- c(F,F,T,T,F)
ingresos<- c(1500, 12000,8500,5500,14500)
genero<- c("Femenino","Masculino","Femenino","Masculino","Femenino")

grupo_df<- data.frame(trabajadores, edades, hijos, ingresos, genero)

#Forma 2 
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22,23,24,26,25),
  hijos = c(F,F,T,T,F),
  ingresos = c(1500, 12000,8500,5500,14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

View(grupo_df)

#Acceso de elementos de la data.frame
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22,23,24,26,25),
  hijos = c(F,F,T,T,F),
  ingresos = c(1500, 12000,8500,5500,14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

grupo_df[1,]
grupo_df[,1]
grupo_df[1]
grupo_df[["trabajadores"]]
grupo_df$trabajadores

#Agregamos filas con rbind()
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22,23,24,26,25),
  hijos = c(F,F,T,T,F),
  ingresos = c(1500, 12000,8500,5500,14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

newfila_grupo_df<- rbind(grupo_df, c("Pamela",23,F,4300,"Femenino"))

#Agregamos columnas con cbind()
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22,23,24,26,25),
  hijos = c(F,F,T,T,F),
  ingresos = c(1500, 12000,8500,5500,14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

newcol_grupo_df<- cbind(grupo_df,
                        ahorros= c(15500,30000,21200,18300,42300))

#Usamos cbind() para combinar dos o más data frame horizontalmente
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22,23,24,26,25),
  hijos = c(F,F,T,T,F),
  ingresos = c(1500, 12000,8500,5500,14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

grupo_df2<- data.frame(
  ahorros= c(15500,30000,21200,18300,42300),
  mascotas= c(T,F,F,T,T))

new_grupo_df<- cbind(grupo_df, grupo_df2)

#Utilice rbind() para combinar dos o más data.frame verticalmente
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22,23,24,26,25),
  hijos = c(F,F,T,T,F),
  ingresos = c(1500, 12000,8500,5500,14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

grupo_df2<- data.frame(
  trabajadores= c("Ronald", "Rosa", "Victor", "Pamela", "Daniel"),
  edades = c(24,27,23,22,28),
  hijos = c(F,T,F,F,T),
  ingresos = c(2150,7500,1200,3650,10200),
  genero = c("Masculino", "Femenino", "Masculino", "Femenino", "Masculino"))

new_grupo_df<- rbind(grupo_df, grupo_df2)

#Eliminar fila y columna 
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22,23,24,26,25),
  hijos = c(F,F,T,T,F),
  ingresos = c(1500, 12000,8500,5500,14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

grupo_df<- grupo_df[-c(1),-c(1)]

#Cantidad de filas y columnas
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22,23,24,26,25),
  hijos = c(F,F,T,T,F),
  ingresos = c(1500, 12000,8500,5500,14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

dim(grupo_df)

#También se puede usar ncol() para encontrar el número 
#de columnas y nrow() para encontrar el número de filas
ncol(grupo_df)
nrow(grupo_df)

#Longitud de data.frame
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22,23,24,26,25),
  hijos = c(F,F,T,T,F),
  ingresos = c(1500, 12000,8500,5500,14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

length(grupo_df)

#Para saber el nombre de las variables
names(grupo_df)
#Para saber la estructura del data.frame
str(grupo_df)


###############################################################################
#(Clase 7) Subconjunto de un data.frame
grupo_df<- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma", "Daniel"),
  edades = c(22,23,24,26,25,27),
  hijos = c(F,F,T,T,F,T),
  ingresos = c(1500, 12000,8500,5500,14500,12300),
  genero = c("Femenino","Masculino","Femenino","Masculino",
             "Femenino","Masculino"))

#subconjuntos subset(data, condición)
hombres<- subset(grupo_df, genero == "Masculino")
mujeres<- subset(grupo_df, genero == "Femenino")
ingresos_sub<- subset(grupo_df, ingresos>7000)

#Subconjunto con más de una condición
hombres_ingreso<- subset(grupo_df, genero == "Masculino" & ingresos>9000)
mujeres_edades<- subset(grupo_df, genero == "Femenino" & edades>23)
mujeres_ed_ing<- subset(grupo_df, genero == "Femenino" & ingresos>5000 &
                          edades>24)

###############################################################################
#(Clase 8) Introducción a los gráficos

#Dibujamos un punto en el diagrama, en la posición (1) y 
#la posición (3)
x11()
plot(1,3)

#Dibuja dos puntos en el diagrama, uno en la posición (1, 3) 
#y otro en la posición (8, 10)
x11()
plot(c(1,8),c(3,10))

#Dibujamos Varios puntos
x11()
plot(c(1,2,3,4,5),c(3,7,8,9,12))
#Para ordenarlo mejor
x<- c(1,2,3,4,5)
y<- c(3,7,8,9,12)

x11()
plot(x,y)

#Secuencia de puntos tanto en el eje X y el eje Y
x11()
plot(1:10)

#Etiquetas(labels)
#main: colocamos título
#xlab: etiqueta en el eje de abscisa
#ylab: etiqueta en el eje de ordenada
x11()
plot(1:10, main= "Mi gráfico", xlab = "eje de abscisas", 
     ylab = "eje de ordenadas")

#Cambiamos el tamaño de los puntos
#1 es el valor predeterminado, mientras que 0.5 significa 50% más pequeño 
#y 2 significa 100% más grande
x11()
plot(1:10, main= "Mi gráfico", xlab = "eje de abscisas", 
     ylab = "eje de ordenadas", cex= 2)

#Cambiamos la forma del punto
#Use pch con un valor de 0 a 25, donde 1 es el predeterminado
x11()
plot(1:10, main= "Mi gráfico", xlab = "eje de abscisas", 
     ylab = "eje de ordenadas", cex= 2, pch= 18)

#Apariencia del gráfico
x11()
plot(1:10, main= "Mi gráfico", xlab = "eje de abscisas", 
     ylab = "eje de ordenadas", cex= 2, pch=19 ,col= "red")

###############################################################################

