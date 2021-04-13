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

#Insertamos los nombres de las frutas en el vector numeros
numeros<- c(20,5,8,10,15,7)
frutas<- c("platano", "manzana", "naranja", "mango", "limon", "fresa")

names(numeros)<- c(frutas)
numeros

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
#Ejemplo 1
numatrix<- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

animalmatrix<- matrix(c("león", "panda", "gato", "canguro","cocodrilo",
                        "elefante", "lobo", "jirafa",
                        "conejo"), nrow=3, ncol = 3)

numatrix2<- rbind(numatrix, c(23,27))

animalmatrix2<- rbind(animalmatrix, c("coala", "tigre","perro"))
#Las celdas de la nueva fila deben tener la misma longitud 
#que la matriz existente.


#Usamos cbind() para agregar columnas adicionales en la matriz
#Ejemplo 2
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
plot(1:10, main= "Mi gráfico", xlab = "Eje de abscisas", 
     ylab = "Eje de ordenadas")

#Cambiamos el tamaño de los puntos
#1 es el valor predeterminado, mientras que 0.5 significa 50% más pequeño 
#y 2 significa 100% más grande
x11()
plot(1:10, main= "Mi gráfico", xlab = "Eje de abscisas", 
     ylab = "Eje de ordenadas", cex= 2)

#Cambiamos la forma del punto
#Use pch con un valor de 0 a 25, donde 1 es el predeterminado
help("points")

x11()
plot(1:10, main= "Mi gráfico", xlab = "Eje de abscisas", 
     ylab = "Eje de ordenadas", cex= 2, pch= 18)

#Apariencia del gráfico
x11()
plot(1:10, main= "Mi gráfico", xlab = "Eje de abscisas", 
     ylab = "Eje de ordenadas", cex= 2, pch=19 ,col= "red")

#Vemos la lista de todos los colores
colors()

###############################################################################
#(Clase 9) Gráfico de dispersión
#Un gráfico de dispersión es un tipo de gráfico que se 
#utiliza para mostrar la relación entre dos variables 
#numéricas y traza un punto para cada observación

#Creamos un data.frame del precio y consumo de pescado
df_pescado<- data.frame(
  precio= c(5,7,8,7,2,2,9,4,11,12,9,6,10),
  consumo= c(99,86,87,88,111,103,87,94,78,77,85,86,80))

x11()
plot(df_pescado$consumo,df_pescado$precio,
     main = "Gráfico de dispersión", 
     xlab= "Consumo",
     ylab= "Precio", 
     cex= 2, pch= 19, col= "orange")

#Insertamos un leyenda
#usamos legend()
##La leyenda se puede colocar como:
#bottomright, bottomleft, bottom, topright, topleft, 
#top, center, right, left.

x11()
plot(df_pescado$consumo,df_pescado$precio,
     main = "Gráfico de dispersión", 
     xlab= "Consumo",
     ylab= "Precio", 
     cex= 2, pch= 19, col= "orange")

legend("topright", "Pescado", fill = "orange")


#Combinamos dos gráficos de dispersión
df_pescado<- data.frame(
  precio= c(5,7,8,7,2,2,9,4,11,12,9,6,10),
  consumo= c(99,86,87,88,111,103,87,94,78,77,85,86,80))

df_pollo<- data.frame(
  precio= c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12),
  consumo= c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85))

x11()
plot(df_pescado$consumo,df_pescado$precio,
     main = "Gráfico de dispersión", 
     xlab= "Consumo",
     ylab= "Precio", 
     cex= 2, pch= 19, col= "orange")

points(df_pollo$consumo,df_pollo$precio,
       cex= 2, pch= 19, col= "dark green")

legend("topright", c("Pescado", "Pollo"), fill= c("orange", "dark green"))

###############################################################################
#(Clase 10) Gráfico de linea

#Colocamos type = "l" para que nos de un gráfico lineal
x<- c(10,15,18,23,26)
y<- c(9,11,15,20,22)

x11()
plot(x,y, main= "Mi gráfico lineal", xlab= "Eje de abscisas",
     ylab = "Eje de ordenadas", type = "l")

#Cambiamos el grosor de la linea
#1 es el valor predeterminado, mientras que 0.5 significa 50% más pequeño 
#y 2 significa 100% más grande
x11()
plot(x,y, main= "Mi gráfico lineal", xlab= "Eje de abscisas",
     ylab = "Eje de ordenadas", type = "l", lwd=2)

#Estilos de linea
#Utilizamos lty con un valor de 0 a 6 para especificar el formato de línea.
x11()
plot(x,y, main= "Mi gráfico lineal", xlab= "Eje de abscisas",
     ylab = "Eje de ordenadas", type = "l", lwd=2, lty=3)

#Valores de parámetro disponibles para lty
#0 quita la línea
#1 muestra una línea continua
#2 muestra una línea discontinua
#3 muestra una línea de puntos
#4 muestra una línea de "puntos discontinuos"
#5 muestra una línea de "trazos largos"
#6 muestra una línea de "dos guiones"

#Graficamos los ingresos anuales
grupo_df<- data.frame(
  años = c(2016, 2017, 2018, 2019, 2020),
  ingresos = c(1500, 12000,8500,14300,12500))

x11()
plot(grupo_df$años, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "Años", ylab= "Ingresos", type= "l", lwd= 2, lty= 5)

#Color de linea
x11()
plot(grupo_df$años, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "Años", ylab= "Ingresos", type= "l", lwd= 2, lty= 5,
     col="dark blue")

#Insertamos un leyenda
#usamos legend()
##La leyenda se puede colocar como:
#bottomright, bottomleft, bottom, topright, topleft, 
#top, center, right, left.
x11()
plot(grupo_df$años, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "Años", ylab= "Ingresos", type= "l", lwd= 2, lty= 5,
     col="dark blue")

legend("bottomright", "Angela", fill = "dark blue")

#Juntamos dos gráficos lineales
grupo_df<- data.frame(
  años = c(2016, 2017, 2018, 2019, 2020),
  ingresos = c(1500, 12000,8500,14300,12500))

grupo_df2<- data.frame(
  años= c(2016, 2017, 2018, 2019, 2020),
  ingresos= c(8300,4200,7500,10800,9700))

x11()
plot(grupo_df$años, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "Años", ylab= "Ingresos", type= "l", lwd= 2, lty= 5,
     col="dark blue")
lines(grupo_df2$años, grupo_df2$ingresos, type= "l", lwd= 2, lty= 6,
      col= "dark red")

legend("bottomright", c("Angela", "Victor"), 
       fill = c("dark blue", "dark red"))

#Gráfico de lineas siguiente la secuencia de puntos
x11()
plot(grupo_df$años, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "Años", ylab= "Ingresos", type= "o", lwd= 2, lty= 5,
     col="dark blue")
lines(grupo_df2$años, grupo_df2$ingresos, type= "o", lwd= 2, lty= 6,
      col= "dark red")

legend("bottomright", c("Angela", "Victor"), 
       fill = c("dark blue", "dark red"))

#Cambios el tipo de puntos y aumentamos su tamaño
x11()
plot(grupo_df$años, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "Años", ylab= "Ingresos", type= "o", lwd= 2, lty= 5,
     col="dark blue", pch= 19, cex= 2)
lines(grupo_df2$años, grupo_df2$ingresos, type= "o", lwd= 2, lty= 6,
      col= "dark red", pch= 19, cex= 2)

legend("bottomright", c("Angela", "Victor"), 
       fill = c("dark blue", "dark red"))

###############################################################################
#(Clase 11) Gráficos circulares

df_gustos<- data.frame(
  preferencia= c(0.32, 0.24,0.16,0.29),
  cursos= c("Álgebra", "Trigonometría", "Geometría","Aritmética"),
  colores= c("dark blue", "dark red", "orange", "purple"))

x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el salón")

#Etiquetas y encabezados
etiqueta1<- paste(df_gustos$preferencia)

x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el salón",
    label= etiqueta1)

etiqueta2<- paste(df_gustos$preferencia, "%", sep= " ")

x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el salón",
    label= etiqueta2)

#Apariencia
x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el salón",
    label= etiqueta2,
    col = df_gustos$colores)

#Insertamos un leyenda
#usamos legend()
##La leyenda se puede colocar como:
#bottomright, bottomleft, bottom, topright, topleft, 
#top, center, right, left.
x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el salón",
    label= etiqueta2,
    col = df_gustos$colores)

legend("topleft", df_gustos$cursos, fill = df_gustos$colores)

#Tamaño de leyenda
x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el salón",
    label= etiqueta2,
    col = df_gustos$colores)

legend("topleft", df_gustos$cursos, fill = df_gustos$colores, cex= 0.85)

###############################################################################
#(Clase 12) Gráfico de barras

df_ingresos<- data.frame(
  meses= c("En", "Fe", "Mar", "Abr", "May", "Jun",
            "Jul", "Ago", "Sep", "Oct", "Nov",
            "Dic"),
  ingresos= c(1500,2500,2000,3500,7000,4000,8500,6000,10000,5000,7500,
              11000))

#Usamaos barplot para graficar
#Usamos namex.arg para definir los nombres de cada 
#observación en el eje x
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses)

#Cambiamos el tamaño de los nombres
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses, cex.names = 0.9)

#Titulo y ejes
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "Meses", ylab= "Ingresos",
        cex.names = 0.9)

#Apariencia
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "Meses", ylab= "Ingresos",
        cex.names = 0.9, col = "tomato3")

#Densidad / Textura de barra
#Para cambiar la textura de la barra usamos density
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "Meses", ylab= "Ingresos",
        cex.names = 0.9, col= "tomato3", density= 25)

#Utilizamos width para el ancho de la barra
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "Meses", ylab= "Ingresos",
        cex.names = 0.9, col= "tomato3", density= 25,
        width= c(1,2,3,4,5,6,7,8,9,10,11,12))

x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "Meses", ylab= "Ingresos",
        cex.names = 0.9, col= "tomato3", density= 25,
        width= c(4,4,4,4,4,4,4,4,4,4,4,4))

#Barras horizontales
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "ingresos", ylab= "Meses",
        cex.names = 0.8, col= "tomato3", density= 25,
        width= c(4,4,4,4,4,4,4,4,4,4,4,4),
        horiz= TRUE)

#Modificamos los límites del eje x
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "ingresos", ylab= "Meses",
        cex.names = 0.8, col= "tomato3", density= 25,
        width= c(4,4,4,4,4,4,4,4,4,4,4,4),
        horiz= TRUE, xlim = c(0,14000))

#Insertamos un leyenda
#usamos legend()
##La leyenda se puede colocar como:
#bottomright, bottomleft, bottom, topright, topleft, 
#top, center, right, left.
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "ingresos", ylab= "Meses",
        cex.names = 0.8, col= "tomato3", density= 25,
        width= c(4,4,4,4,4,4,4,4,4,4,4,4),
        horiz= TRUE, xlim = c(0,14000))

legend("bottomright", "Ingresos de Pamela", fill = "tomato3")

#Otra forma de insertar leyenda
meses_table<- table(df_ingresos$meses)
colores<- c("blue", "red", "yellow", "orange", "gray", "green", 
            "tomato3", "dark red", "violetred", "turquoise", "pink2",
            "honeydew")

x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "ingresos", ylab= "Meses",
        cex.names = 0.8, col= colores,
        width= c(4,4,4,4,4,4,4,4,4,4,4,4),
        horiz= TRUE, xlim = c(0,14000),
        legend= rownames(meses_table))

#Cambiamos la orientación de los caracteres de los ejes con last
#0: predeterminado
#1: pone horizontal el eje de ordenadas
#2: pone horizontal el eje de ordenadas y vertical abscisas
#3: pone todos los ejes verticalmente
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses,
        main= "Ingresos mensuales", xlab= "ingresos", ylab= "Meses",
        cex.names = 0.8, col= colores,
        width= c(4,4,4,4,4,4,4,4,4,4,4,4),
        horiz= TRUE, xlim = c(0,14000),
        legend= rownames(meses_table),
        las= 1)

###############################################################################
#(Clase 13) Gráfico de barras apiladas y agrupadas
df_fuma<- data.frame(
  genero= rep(c("Femenino", "Masculino", "Masculino", "Femenino",
                "Masculino", "Femenino", "Masculino", "Femenino"),
              times= c(2,3,8,7,9,5,4,6)),
  fuma= rep(c("Si", "No", "Si", "Si", "Si", "No", "Si", "No"), 
            times= c(7,3,5,9,4,6,2,8)))

fuma_table<- table(df_fuma$genero, df_fuma$fuma)

x11()
barplot(fuma_table, main= "Cantidad de personas que fuman y no fuman",
        xlab= "Fuman", ylab = "Cantidad",
        col= c("dark red", "dark blue"))

#Modificamos el eje de ordenadas
x11()
barplot(fuma_table, main= "Cantidad de personas que fuman y no fuman",
        xlab= "Fuman", ylab = "Cantidad",
        col= c("dark red", "dark blue"), ylim= c(0,35))

#Insertamos leyenda
x11()
barplot(fuma_table, main= "Cantidad de personas que fuman y no fuman",
        xlab= "Fuman", ylab = "Cantidad",
        col= c("dark red", "dark blue"), ylim= c(0,35),
        legend= rownames(fuma_table))

#Otra forma de insertar leyenda
#usamos legend()
##La leyenda se puede colocar como:
#bottomright, bottomleft, bottom, topright, topleft, 
#top, center, right, left.
x11()
barplot(fuma_table, main= "Cantidad de personas que fuman y no fuman",
        xlab= "Fuman", ylab = "Cantidad",
        col= c("dark red", "dark blue"), ylim= c(0,35))

legend("top", rownames(fuma_table), fill = c("dark red", "dark blue"))

#Diagrama de barras agrupadas 
x11()
barplot(fuma_table, main= "Cantidad de personas que fuman y no fuman",
        xlab= "Fuman", ylab = "Cantidad",
        col= c("dark red", "dark blue"), ylim= c(0,35),
        legend= rownames(fuma_table),
        beside= TRUE)

#Combinamos gráficos
x11()
par(mfrow= c(1,2))

barplot(fuma_table, main= "Grafico de barras apiladas",
        xlab= "Fuman", ylab = "Cantidad",
        col= c("dark red", "dark blue"), ylim= c(0,35),
        legend= rownames(fuma_table))

barplot(fuma_table, main= "Grafico de barras agrupadas",
        xlab= "Fuman", ylab = "Cantidad",
        col= c("dark red", "dark blue"), ylim= c(0,35),
        legend= rownames(fuma_table),
        beside= TRUE)

###############################################################################
#(Clase 14) 






