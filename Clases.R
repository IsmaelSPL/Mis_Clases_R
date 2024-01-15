###############################################################################
#                         Módulo 1 - R Basics                                 #
###############################################################################

##########################
# 0. Funciones iniciales #
##########################

# Print: imprime el resultado
print("Hola mundo")
"hola mundo"

# Creamos algunas variables
x <- 5
y <- 2
z <- 9
a <- "Cadena de texto"
b <- 10

# Eliminar una variable
rm(list = c("x"))
# Eliminar dos o más variables
rm(list = c("y", "z"))
# ls: sirve para conocer objetos existentes
ls()
# Eliminamos todos los objetos
rm(list = ls())

# Help
help(summary)
mean # Sombreas + F1

# Instalar un paquete
install.packages("ggplot2")
# Activamos un paquete
library(ggplot2)

# Para saber donde está el directorio de trabajo
getwd()

# Cambiamos nuestro directorio de tabajo
setwd("Ruta con separacion: /")

# Para limpiar la consola: control + L

#########################
# 1. Tipos de Variables #
#########################

# Integer
x <- 100L
class(x)
print(x)

# Flotantes (numeric)
y <- 10.5
class(y)
print(y)

z <- 123
class(z)
print(z)

# Logical/boolean
a <- TRUE
class(a)
print(a)

# Complex
b <- 9i + 3
class(b)
print(b)

# Character/string
c <- "Hola mundo!"
class(c)
print(c)

##########################
# 2. Casteo de variables #
##########################

# Cambio de tipo de datos
x <- 61.5
class(x)

# Flotante a integer
x <- as.integer(x)
class(x)
# Integer a string
x <- as.character(x)
class(x)
# String a flotante
x <- as.numeric(x)
class(x)
# Flotante a complex
x <- as.complex(x)
class(x)
# Complex a logical
x <- as.logical(x)
class(x)

##############################
# 3. Operaciones Aritméticas #
##############################

a = 17
b = 2

# Adición
a + b 

# Sustracción
a - b

# Multiplicación
a * b

# División
a / b

# División entera
a %/% b

# Residuo de la división
a %% b

# Potenciación
a ^ b

# Raíz cuadrada
100 ^ (1/2)

################################
# 4. Cadenas de Texto (String) #
################################

# Concatenación de cadenas
cadena1 <- "Hola, "
cadena2 <- "¿cómo estás?"

# paste: fusiona o concatena dos o más cadenas
concatenacion_paste <- paste(cadena1, cadena2)
concatenacion_paste

# cat:  se utiliza para concatenar y mostrar en la consola el contenido de uno 
# o más objetos, sin devolver un valor.
# No devuelve un valor (su valor de retorno es NULL). 
# Simplemente se utiliza para mostrar información en la consola
concatenacion_cat <- cat("Mi cadeba de texto:", cadena1, cadena2)
concatenacion_cat
cat("Mi cadeba de texto:", cadena1, cadena2)

# grepl: verifica si un caracter o una secuencia de 
# caracteres están presentes en una cadena
cadena4 <- "Hoy voy a pasear a mi perro que tiene 1 año"
grepl("H", cadena4)
grepl("gran", cadena4)
grepl(1, cadena4)

# nchar: dá el número de caracteres de una cadena
nchar(cadena4)

###########################################################
# 5. Conectores Lógicos para combinar variables booleanas #
###########################################################

# Conector and: ("&" o "&&")

# El operador and se utiliza para combinar dos o más condiciones, y 
# devuelve True solo si todas las condiciones son verdaderas. 
# Si al menos una de las condiciones es falsa, la expresión completa evalúa a False.

# &: se utiliza para realizar una operación AND elemento por elemento
# &&: se utiliza para realizar una operación AND, pero solo evalúa el primer
# elemento si hay más de uno.

a <- TRUE
b <- FALSE
c <- TRUE

resultado <- a & b & c
print(resultado)  # Salida: False

# Conector or: ("|" o "||")
# |: se utiliza para realizar una operación OR elemento por elemento.
# ||:  se utiliza para realizar una operación OR, pero solo evalúa el primer elemento 
# si hay más de uno

x <- F
y <- T
z <- F

resultado <- x | y | z
print(resultado)  # Salida: True

# Conector not: ("!")
# !: se utiliza para negar una condición
valor <- TRUE
negado <- !valor

print(negado)  # Salida: False

# Ejemplo

edad <- 18
tiene_dinero <- TRUE
permiso_adulto <- FALSE

puede_comprar <- (edad >= 16 & tiene_dinero) | (edad < 16 & permiso_adulto)

paste("¿Puede comprar el producto?", puede_comprar)

#####################################
# 6. Ingreso de Valores del Usuario #
#####################################

# Función readline
readline()

# Solicitar al usuario que ingrese su nombre y almacenarlo en una variable
nombre <- readline("Por favor, ingresa tu nombre: ")

class(nombre)

# Solicitar al usuario que ingrese su edad y almacenarla en una variable
edad <- readline("Ingresa tu edad: ")

class(edad)

# Mostrar los valores ingresados por el usuario
paste("Hola,", nombre, "tienes", edad, "años.")

# Transformaos a una variable entender
edad <- as.integer(edad)
class(edad)

#########################
# 7. Ejercicio Práctico #
#########################

# Calcular el monto a pagar por un préstamo
  
# El monto final a pagar por el préstamo se calcula multiplicando el monto 
# prestado por uno más el interés elevado a la cantidad de meses que dura el préstamo. 
# Las variables de entrada son:
# m: monto prestamo  
# n: número de meses que dura el préstamo  
# i: tasa de interés mensual

# Variables de entrada
monto_prestamo <- as.numeric(readline("Ingrese el monto del préstamo: "))
num_meses <- as.integer(readline("Ingrese el número de meses del préstamo: "))
tasa_interes_mensual <- as.numeric(readline("Ingrese la tasa de interés mensual en decimal (por ejemplo, 0.05 para 5%): "))

# Cálculo del monto total a pagar
monto_total_pagar <- monto_prestamo * (1 + tasa_interes_mensual) ^ num_meses

paste("El monto total a pagar al final del préstamo es:", round(monto_total_pagar))

###############################################################################
#                      Módulo 2 - R Data Structures                           #
###############################################################################

###############
# 1. Vectores #
###############

# un vector es una estructura de datos fundamental que permite almacenar un 
# conjunto ordenado de elementos del mismo tipo. 
# Los vectores son esenciales para realizar operaciones eficientes, 
# ya que muchas funciones y operaciones están diseñadas para trabajar con ellos.

# Vectores numeric
vect_num <- c(20,5,8)
vect_num
class(vect_num)

# Crear un vector con una secuencia de números
vect_num <- 3:10
vect_num
vect_num <- c(3:10)

# Generación de vectores secuenciados 
vect_num <- seq(from = 0, to = 100, by = 20)
vect_num
vect_num <- seq(0,50, by = 10)
vect_num

# Repetir cada elemento del vector
rep_each <- rep(c(1,2,3), each = 3)
rep_each

# Rep la secuencia del vector
rep_times <- rep(c(1,2,3), times = 3)
rep_times

# Repetimos cada valor de forma independiente
rep_independiente <- rep(c(1,2,3), times = c(5,2,1))
rep_independiente

# Vector character
vect_string <- c("manzana","naranja","fresa","pera")
class(vect_string)

# Vector de valores lógicos
vect_logico <- c(TRUE, FALSE, T, F)
class(vect_logico)

# Número de elementos que tiene cada vector 
length(vect_num)
length(vect_string)
length(vect_logico)

# Accedemos a los elementos de un vector
vect_num <- c(20,5,8)
vect_string <- c("manzana","naranja","fresa","pera")
vect_logico <- c(TRUE, FALSE, T, F)

vect_num[3]
vect_num[c(1,3)]

vect_string[2]
vect_string[c(1,3)]

vect_logico[4]
vect_logico[c(2,4)]

# Modificar elementos de un vector
vect_num[2] <- 23
vect_string[1] <- "mandarina"
vect_logico[3] <- T

# Operaciones con vectores
vec1 <- c(1,5,6,30)
vec2 <- c(5,10,3,2)

vec3 <- vec1 + vec2
vec3 <- vec2 - vec1
vec3 <- vec1 * vec2
vec3 <- vec1 / vec2

# length: longitud del vector
length(vect_num)

# Agregar elementos a un vector
vect_num <- c(vect_num, 7, 9)
vect_num

# Eliminar elemento de un vector
vect_num <- vect_num[-2]
vect_num

# Ordenamos los elementos de un vector
sort(vect_num)
sort(vect_string)
sort(vect_logico)

# sum, min, max
suma_vector <- sum(vect_num)
minimo_vector <- min(vect_num)
maximo_vector <- max(vect_num)

paste("La suma del vector es:", suma_vector)
paste("El valor mínimo del vector es:", minimo_vector)
paste("El valor máximo del vector es:", maximo_vector)

# Jerarquía (character > numeric > logical)
error1 <- c("Angela", "Carlos", 22, "Contabilidad",FALSE,TRUE)
class(error1)

error2 <- c(23,T,FALSE)
class(error2)

###############
# 2. Matrices #
###############

# Crear una matriz de 4x2
numatrix <- matrix(c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)

# Accedemos a los elementos de una matriz

numatrix[2,2]
numatrix[1,] # Mostramos la fila 1
numatrix[,2] # Mostramos la columna 2
numatrix[c(1,2),] # Muestro la fila 1 y 2

# Longitud de la matriz
length(numatrix)

# Utilizamos dim() para saber la cantidad de filas y columnas en una matriz
dim(numatrix)

# Eliminamos filas y columnas
numatrix <- numatrix[-c(1),-c(2)] #Remueve la primera fila y la segunda columna
numatrix

# Jerarquía (character > numeric > logical)
error1 <- matrix(c("león", "5", 6, 21, 8, 20, TRUE, FALSE), nrow=2, ncol=4)
error1

error2 <- matrix(c(5,TRUE, FALSE, T, F, F), nrow=2, ncol=3)
error2

# Operaciones con matrices
matriz_A <- matrix(c(22,8,15,12), nrow = 2, ncol = 2)
matriz_B <- matrix(c(2,4,5,6), nrow = 2, ncol= 2 )

matriz_A + matriz_B # Suma
matriz_A - matriz_B # Resta
matriz_A %*% matriz_B # Multiplicación
matriz_A / matriz_B # División

#############
# 3. Listas #
#############

# Las listas sirven para almacenar y manipular colecciones ordenadas de elementos. 
# Las listas te permiten almacenar múltiples elementos en un solo lugar. 
# Estos elementos pueden ser de diferentes tipos, como números, cadenas de texto, 
# booleanos, objetos personalizados, entre otros.

# Crear una lista
milist<- list("Angela", "Carlos", "Allison", 20, 25, 23)
milist2<- list(c("Angela", "Carlos","Allison"), c(20,25,23))
milist3<- list(nombres = c("Angela", "Carlos","Allison"), edades = c(20,25,23))

class(milist)

# Accedemos a elementos de una lista
milist[1] # Accede a un elemento de una lista
milist[c(2,4)] # Accede a dos elementos de una lista
milist2[1] # Accede a un vector de la lista
milist3["edades"] # Accede por ticker

# Modificiar elementos de una lista
milist[1]<- "Pamela"

milist2[[1]]<- c("Pamela","Juan","Shirley")

milist3[["edades"]]<- c(25,30,18)

# longitud de una lista
length(milist)
length(milist2)
length(milist3)
  
# append: agregar elementos a una lista
nueva_list <- append(milist, c("Carlos"))
nueva_list

# Eliminar elementos de la lista

newlist <- milist[-1]
newlist

newlist2 <- milist2[-1]
newlist2

newlist3 <- milist3[-2]
newlist3

# Unir dos listas 
list1<- list("Rosa", "Jesus", "Carmen")
list2<- list(21,23,26)
list3<- c(list1, list2)

###############
# 3. Factores #
###############

# Factores se utilizan para categorizar los datos. Ejemplos:
# Sexo: masculino/femenino
# Música: Rock, Pop, Clásica, Jazz
# País: Perú, Argentina, España, Francia

# Crear un factor
music_genero <- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))

music_genero

# Imprimir solo los niveles
levels(music_genero)

# Establecer los niveles
music_genero<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"),
                     levels = c("Classic","Jazz","Pop",
                               "Rock","Otros"))

levels(music_genero)

# Longitud del factor
music_genero<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))

length(music_genero)

# Tabla de frecuencia
table(music_genero)

# Accedemos a los factores
music_genero<- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))

music_genero[3]
music_genero[-1]

# Modificamos el valor de un item
music_genero <- factor(c("Jazz","Rock","Classic","Classic",
                       "Pop","Jazz","Rock", "Jazz"))

music_genero[3]<- "Pop"

# Juntando dos factores
dias_factor<- factor(c("lunes", "martes", "miercoles", "juves",
                     "viernes", "sabado", "domingo"))

clases_factor<- factor(c("martes", "juves", "sabado"))

dia_clas_fac<- factor(clases_factor, levels= dias_factor)

table(dia_clas_fac)

#################
# 4. data.frame #
#################

# Son datos que se muestran en formato de tabla
# Pueden tener diferentes tipos de datos en su interior. 
# Mientras que la primera columna puede ser character, 
# la segunda y la tercera pueden ser numeric o logical.
# Sin embargo, cada columna debe tener el mismo tipo de datos

# Creamos un data.frame
grupo_df <- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma"),
  edades = c(22, 23, 24, 26, 25),
  hijos = c(F, F, T, T, F),
  ingresos = c(1500, 12000, 8500, 5500, 14500),
  genero = c("Femenino","Masculino","Femenino","Masculino","Femenino"))

grupo_df
View(grupo_df)

# Acceso de elementos de la data.frame
grupo_df[1,] # Accedemos a la primera fila
grupo_df[,1] # Accedemos a la primera columna
grupo_df[["trabajadores"]] # Accedemos a una columna específica
grupo_df$trabajadores # Accedemos a una columna específica

# rbind: agrega una filas
newfila_grupo_df <- rbind(grupo_df, c("Pamela",23,F,4300,"Femenino"))
newfila_grupo_df

# cbind: agrega una columna

# Primera forma con cbind
newcol_grupo_df<- cbind(grupo_df,
                        ahorros= c(15500,30000,21200,18300,42300))
newcol_grupo_df

# Segunda forma sin cbind
grupo_df$ahorros<- c(15500,30000,21200,18300,42300)

# Cambiar los nombres de las columnas
colnames(grupo_df)<- c("TRABAJADORES", "EDADES", "HIJOS", "INGRESOS",
                       "GENERO", "AHORROS")

# Cambiar los nombres de las filas
rownames(grupo_df)<- c("Fila 1", "Fila 2", "Fila 3", "Fila 4", "Fila 5")

# Unión de DataFrame
# Usamos cbind() para unir dos data.frame por columna
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
new_grupo_df

# Utilice rbind() para combinar dos o más data.frame por fila
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

new_grupo_df2 <- rbind(grupo_df, grupo_df2)
new_grupo_df2

# dim: muestra la cantidad de filas y columnas
dim(grupo_df)

# row(): muestra el número de filas
# ncol(): muestra el número de columnas
ncol(grupo_df)
nrow(grupo_df)

# Longitud de data.frame
length(grupo_df)

# Mostrar nombre de las variables
names(grupo_df)
# Mostrar la estructura del data.frame
str(grupo_df)

# Eliminar fila y columna 

# Primera forma
grupo_df
grupo_df<- grupo_df[-c(1),-c(2)] # Eliminamos la primera fila y la segunda columna
grupo_df

grupo_df<- grupo_df[-c(1),] # Eliminamos toda la primera fila
grupo_df

grupo_df<- grupo_df[,-c(2)] # Eliminamos toda la segunda columna
grupo_df

# Segunda forma para borrar columna
grupo_df$ingresos<- NULL
grupo_df

##################
# 5. subconjunto #
##################

# Creamos un data.frame
grupo_df <- data.frame(
  trabajadores = c("Angela", "David", "Melanie", "Hector","Emma", "Daniel"),
  edades = c(22,23,24,26,25,27),
  hijos = c(F,F,T,T,F,T),
  ingresos = c(1500, 12000,8500,5500,14500,12300),
  genero = c("Femenino","Masculino","Femenino","Masculino",
             "Femenino","Masculino"))

# Subconjunto subset(data, condición)
hombres <- subset(grupo_df, genero == "Masculino")
hombres

mujeres <- subset(grupo_df, genero == "Femenino")
mujeres

ingresos_sub <- subset(grupo_df, ingresos > 7000)
ingresos_sub

# Subconjunto con más de una condición
hombres_ingreso <- subset(grupo_df, genero == "Masculino" & ingresos>9000)
mujeres_edades <- subset(grupo_df, genero == "Femenino" & edades>23)
mujeres_ed_ing <- subset(grupo_df, genero == "Femenino" & ingresos>5000 &
                          edades>24)

###############################################################################
#                    Módulo 3 - Programming Fundamentals                      #
###############################################################################

############################
# 1. Estructura de Control # 
############################

# Las condiciones se utilizan para tomar decisiones en tu código. 
# Permiten que tu programa ejecute diferentes bloques de código según si se 
# cumple o no una condición específica. Esto es esencial para escribir programas 
# robustos y flexibles que pueden adaptarse a diferentes escenarios. 
# Las condiciones te brindan el control sobre el flujo de tu programa y 
# te permiten automatizar acciones basadas en reglas predefinidas.

# Condición: if
edad <- 18

if (edad >= 18) {
  print("Eres mayor de edad")
}

# Condición: else
# Se usa "else" para proporcionar una acción alternativa si la condición "if" no se cumple
edad <- 15

if (edad >= 18) {
  print("Eres mayor de edad")
} else {
  print("Eres menor de edad")
}

# Condición: else if
# else if se utiliza para manejar múltiples condiciones en secuencia.
nota <- 75

if (nota < 60) {
  print("Tienes una calificación insuficiente.")
} else if (60 <= nota < 70) {
  print("Tienes una calificación suficiente.")
} else if (70 <= nota < 80) {
  print("Tienes una calificación buena.")
} else {
  print("Tienes una calificación sobresaliente.")
}

# Condición Anidado

# Las reglas para determinar que un año sea bisiesto son las siguientes:
  
  # Los años bisiestos son divisibles entre 4 (2004, 2008)  
  # Excepeto si es divisible entre 100, por lo tanto, no es bisiesto (2100, 2200)
  # No obstante, si es divisible entre 400, entonces si es bisiesto (2000, 2400)

anio <- as.integer(readline("Ingrese el año: "))

if (anio %% 4 == 0) {
  
  if (anio %% 100 == 0) {
    
    if (anio %% 400 == 0) {
      paste("El año", anio, "es bisiesto")
    } else {
      paste("El año", anio, "no es bisiesto")
    }
  } else {
    paste("El año", anio, "es bisiesto")
  }
} else {
  paste("El año", anio, "no es bisiesto")
}


# Condicional con Conectores Lógicos
numero <- as.integer(readline("Ingresa un número: "))

if (numero > 0 & numero %% 2 == 0) {
  print("El número es positivo y par.")
} else {
  print("El número no cumple con ambas condiciones.")
}

##################
# 2. Bucle while # 
##################

# El bucle "while" sirve para ejecutar un bloque de código repetidamente mientras 
# una condición dada sea verdadera. Esto significa que el código dentro del bucle 
# se ejecutará una y otra vez hasta que la condición especificada se vuelva falsa. 
# Es importante tener en cuenta que debes asegurarte de que la condición del bucle while 
# eventualmente se vuelva falsa, de lo contrario, podrías tener un bucle infinito que hará 
# que tu programa se ejecute continuamente sin detenerse.

# Crear un bucle while

contador <- as.integer(readline("Ingrese un número: "))

while (contador <= 5){
  print(contador)
  contador = contador + 1
}

# break
# El uso de break te permite salir del bucle antes de que se cumpla la condición de parada
numero <- as.integer(readline("Ingrese un número: "))

while (numero < 10){
  
  if (numero == 5){
    break
  } else {
    print(numero)
    numero = numero + 1
  }
}

# next 
# El uso de "next" te permite omitir la iteración actual y pasar a la siguiente sin ejecutar
# el código restante dentro del bucle para esa iteración en particular.

numero = as.integer(readline("Ingrese un número: "))

while (numero <= 10){
  
  if (numero == 5){
    numero = numero + 1
    next # Salta la iteración actual si el número es 5
  } else {
    print(numero)
    numero = numero + 1
  }
}

# flag
# "flag" se utiliza para referirse a una variable booleana que se utiliza
# como una señal o indicador para controlar el flujo de un programa

# Calcular la suma de una cantidad de números enteros ingresados por el usuario

suma <- 0
continuar <- TRUE

# Como nosotros no sabemos cuantos números va a ingresar el usuario, vamos a
# realizar un bucle infinito con un while que siempre va a ser verdadero.

while (continuar){
  input_usuario <- readline("Ingrese el número (exit para terminar): ")
  
  if (input_usuario == "exit"){
    continuar = FALSE
  } else {
    numero = as.integer(input_usuario)
    suma = suma + numero
    print(paste("La suma es", suma))
  }
}

print(paste("La suma final es: ", suma))

################
# 3. Bucle for # 
################

# El bucle "for" se utiliza para iterar sobre elementos de una secuencia 
# (como una lista, cadena de texto, vector, etc) y ejecutar un 
# bloque de código repetidamente para cada elemento de la secuencia. 
# Su función principal es realizar tareas que requieren procesamiento o 
# manipulación de datos en colecciones de elementos.

# Crear un bucle for
mi_vector <- c(1:10)
mi_vector

# Iterar sobre un vector
for (x in mi_vector) {
  print(x)
}

# Iterar sobre una lista
frutas <- list("manzana", "mango", "fresa")

for (x in frutas) {
  print(x)
}

# Iterar sobre un data.frame

# Crear un data.frame
mi_data_frame <- data.frame(
  Nombre = c("Juan", "María", "Carlos"),
  Edad = c(25, 30, 22),
  Puntuacion = c(80, 95, 75)
)

# Iterar sobre filas
for (i in 1:nrow(mi_data_frame)) {
  fila <- mi_data_frame[i, ]
  print(paste("Nombre:", fila$Nombre, "- Edad:", fila$Edad, "- Puntuación:", fila$Puntuacion))
}

# Iterar sobre columnas
for (nombre_columna in colnames(mi_data_frame)) {
  columna <- mi_data_frame[[nombre_columna]]
  print(paste("Nombre de la columna:", nombre_columna))
  print(columna)
}

##############
# 4. Funciones
##############

# Las funciones son bloques de código que realizan una tarea específica y 
# pueden ser reutilizados en diferentes partes de un programa. 
# Son una parte fundamental de la programación, ya que facilitan la creación 
# de programas más organizados, mantenibles y eficientes al dividir tareas en 
# bloques lógicos y reutilizables.

# Función simple
saludar <- function(){
  print("¡Hola, mundo!")
}

saludar() # Llamamos a la función

# Función con parámetros
saludar <- function(nombre){
  print(paste("Hola, ", nombre,"!"))
}

saludar("Juan") # Llamamos a la función con un argumento

# Valores de retorno: varios

suma <- function(a, b){
  resultado = a + b
  return(resultado)
}

print(paste("La suma es: ", suma(3,5)))

# Función recursiva
# La recursión es un enfoque en el que una función se llama a sí misma
mi_factorial <- function(n){
  if (n == 0){
    return(1)
  } else {
    return(n * mi_factorial(n - 1))
  }
}

mi_factorial(5)

###############################################################################
#                         Módulo 4 - Graphics                                 #
###############################################################################

#############################
# 1. Gráfico sin paquetería #
#############################

# Gráfico de Dispersión
#######################

# Dibujamos un punto en el diagrama, en la posición (1) y 
# la posición (3)
# x11() nos permitirá realizarle zoom al gráfico
plot(1,3)

# Dibuja dos puntos en el diagrama, uno en la posición (1, 3) 
# y otro en la posición (8, 10)
plot(c(1,8),c(3,10))

# Dibujamos Varios puntos
x<- c(1,2,3,4,5)
y<- c(3,7,8,9,12)

plot(x,y)

# Secuencia de puntos tanto en el eje X y el eje Y
plot(1:10)

# Etiquetas(labels)
# main: colocamos título
# xlab: etiqueta en el eje de abscisa
# ylab: etiqueta en el eje de ordenada

plot(1:10, main= "Mi grafico", xlab = "Eje de abscisas", 
     ylab = "Eje de ordenadas")

# cex: cambia el tamaño de los puntos
# 1: valor predeterminado, mientras que 
# 0.5: es 50% más peque?o 
# 2: es 100% más grande
plot(1:10, main= "Mi grafico", xlab = "Eje de abscisas", 
     ylab = "Eje de ordenadas", cex= 2)

# pch: Cambia la forma del punto
# Use pch con un valor de 0 a 25, donde 1 es el predeterminado
help("points")

plot(1:10, main= "Mi gráfico", xlab = "Eje de abscisas", 
     ylab = "Eje de ordenadas", cex= 2, pch= 18)

# Apariencia del gráfico
plot(1:10, main= "Mi gráfico", xlab = "Eje de abscisas", 
     ylab = "Eje de ordenadas", cex= 2, pch=19 ,col= "red")

# Vemos la lista de todos los colores
colors()

# Creamos un data.frame
df_pescado<- data.frame(
  precio= c(5,7,8,7,2,2,9,4,11,12,9,6,10),
  consumo= c(99,86,87,88,111,103,87,94,78,77,85,86,80))

plot(df_pescado$consumo,df_pescado$precio,
     main = "Gráfico de dispersión", 
     xlab= "Consumo",
     ylab= "Precio", 
     cex= 2, pch= 19, col= "orange")

# Insertamos un leyenda
# usamos legend()
# La leyenda se puede colocar como:
# bottomright, bottomleft, bottom, topright, topleft, 
# top, center, right, left.

plot(df_pescado$consumo,df_pescado$precio,
     main = "Gráfico de dispersi?n", 
     xlab= "Consumo",
     ylab= "Precio", 
     cex= 2, pch= 19, col= "orange")

legend("topright", "Pescado", fill = "orange")


# Combinamos dos gráficos de dispersión
df_pescado<- data.frame(
  precio= c(5,7,8,7,2,2,9,4,11,12,9,6,10),
  consumo= c(99,86,87,88,111,103,87,94,78,77,85,86,80))

df_pollo<- data.frame(
  precio= c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12),
  consumo= c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85))

plot(df_pescado$consumo,df_pescado$precio,
     main = "Gráfico de dispersión", 
     xlab= "Consumo",
     ylab= "Precio", 
     cex= 2, pch= 19, col= "orange")

points(df_pollo$consumo,df_pollo$precio,
       cex= 2, pch= 19, col= "dark green")

legend("topright", c("Pescado", "Pollo"), fill= c("orange", "dark green"))

# Gráfico de Línea
##################

#Colocamos type = "l" para que nos de un gr?fico lineal
x<- c(10,15,18,23,26)
y<- c(9,11,15,20,22)

x11()
plot(x,y, main= "Mi gr?fico lineal", xlab= "Eje de abscisas",
     ylab = "Eje de ordenadas", type = "l")

#Cambiamos el grosor de la linea
#1 es el valor predeterminado, mientras que 0.5 significa 50% m?s peque?o 
#y 2 significa 100% m?s grande
x11()
plot(x,y, main= "Mi gr?fico lineal", xlab= "Eje de abscisas",
     ylab = "Eje de ordenadas", type = "l", lwd=2)

#Estilos de linea
#Utilizamos lty con un valor de 0 a 6 para especificar el formato de l?nea.
x11()
plot(x,y, main= "Mi gr?fico lineal", xlab= "Eje de abscisas",
     ylab = "Eje de ordenadas", type = "l", lwd=2, lty=3)

#Valores de par?metro disponibles para lty
# 0 quita la línea
# 1 muestra una línea continua
# 2 muestra una línea discontinua
# 3 muestra una línea de puntos
# 4 muestra una línea de "puntos discontinuos"
# 5 muestra una l?nea de "trazos largos"
# 6 muestra una l?nea de "dos guiones"

#Graficamos los ingresos anuales
grupo_df<- data.frame(
  a?os = c(2016, 2017, 2018, 2019, 2020),
  ingresos = c(1500, 12000,8500,14300,12500))

x11()
plot(grupo_df$a?os, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "A?os", ylab= "Ingresos", type= "l", lwd= 2, lty= 5)

#Color de linea
x11()
plot(grupo_df$a?os, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "A?os", ylab= "Ingresos", type= "l", lwd= 2, lty= 5,
     col="dark blue")

#Insertamos un leyenda
#usamos legend()
##La leyenda se puede colocar como:
#bottomright, bottomleft, bottom, topright, topleft, 
#top, center, right, left.
x11()
plot(grupo_df$a?os, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "A?os", ylab= "Ingresos", type= "l", lwd= 2, lty= 5,
     col="dark blue")

legend("bottomright", "Angela", fill = "dark blue")

#Juntamos dos gr?ficos lineales
grupo_df<- data.frame(
  a?os = c(2016, 2017, 2018, 2019, 2020),
  ingresos = c(1500, 12000,8500,14300,12500))

grupo_df2<- data.frame(
  a?os= c(2016, 2017, 2018, 2019, 2020),
  ingresos= c(8300,4200,7500,10800,9700))

x11()
plot(grupo_df$a?os, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "A?os", ylab= "Ingresos", type= "l", lwd= 2, lty= 5,
     col="dark blue")
lines(grupo_df2$a?os, grupo_df2$ingresos, type= "l", lwd= 2, lty= 6,
      col= "dark red")

legend("bottomright", c("Angela", "Victor"), 
       fill = c("dark blue", "dark red"))

#Gr?fico de lineas siguiente la secuencia de puntos
x11()
plot(grupo_df$a?os, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "A?os", ylab= "Ingresos", type= "o", lwd= 2, lty= 5,
     col="dark blue")
lines(grupo_df2$a?os, grupo_df2$ingresos, type= "o", lwd= 2, lty= 6,
      col= "dark red")

legend("bottomright", c("Angela", "Victor"), 
       fill = c("dark blue", "dark red"))

#Cambios el tipo de puntos y aumentamos su tama?o
x11()
plot(grupo_df$a?os, grupo_df$ingresos, main= "Ingresos anuales",
     xlab= "A?os", ylab= "Ingresos", type= "o", lwd= 2, lty= 5,
     col="dark blue", pch= 19, cex= 2)
lines(grupo_df2$a?os, grupo_df2$ingresos, type= "o", lwd= 2, lty= 6,
      col= "dark red", pch= 19, cex= 2)

legend("bottomright", c("Angela", "Victor"), 
       fill = c("dark blue", "dark red"))

###############################################################################
#(Clase 11) Gr?ficos circulares en Rstudio

df_gustos<- data.frame(
  preferencia= c(0.32, 0.24,0.16,0.29),
  cursos= c("?lgebra", "Trigonometr?a", "Geometr?a","Aritm?tica"),
  colores= c("dark blue", "dark red", "orange", "purple"))

x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el sal?n")

#Etiquetas y encabezados
etiqueta1<- paste(df_gustos$preferencia)

x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el sal?n",
    label= etiqueta1)

etiqueta2<- paste(df_gustos$preferencia, "%", sep= " ")

x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el sal?n",
    label= etiqueta2)

#Apariencia
x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el sal?n",
    label= etiqueta2,
    col = df_gustos$colores)

#Insertamos un leyenda
#usamos legend()
##La leyenda se puede colocar como:
#bottomright, bottomleft, bottom, topright, topleft, 
#top, center, right, left.
x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el sal?n",
    label= etiqueta2,
    col = df_gustos$colores)

legend("topleft", df_gustos$cursos, fill = df_gustos$colores)

#Tama?o de leyenda
x11()
pie(df_gustos$preferencia, main = "Preferencia de los cursos en el sal?n",
    label= etiqueta2,
    col = df_gustos$colores)

legend("topleft", df_gustos$cursos, fill = df_gustos$colores, cex= 0.85)

###############################################################################
#(Clase 12) Gr?fico de barras en Rstudio

df_ingresos<- data.frame(
  meses= c("En", "Fe", "Mar", "Abr", "May", "Jun",
           "Jul", "Ago", "Sep", "Oct", "Nov",
           "Dic"),
  ingresos= c(1500,2500,2000,3500,7000,4000,8500,6000,10000,5000,7500,
              11000))

#Usamaos barplot para graficar
#Usamos namex.arg para definir los nombres de cada 
#observaci?n en el eje x
x11()
barplot(df_ingresos$ingresos, names.arg=df_ingresos$meses)

#Cambiamos el tama?o de los nombres
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

#Modificamos los l?mites del eje x
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

#Cambiamos la orientaci?n de los caracteres de los ejes con last
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
#(Clase 13) Gr?fico de barras apiladas y agrupadas en Rstudio
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

#Combinamos gr?ficos
#Dividimos la gr?fica en una fila y dos columnas.
#Normalmente est? como mfrow= c(1,1)
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
#(Clase 15) Gráfico histograma en Rstudio

#Mostrar? la frecuencia con la que se presenta los datos seleccionados.
Data_Cars<- mtcars
sort(Data_Cars$hp)

x11()
hist(Data_Cars$hp, main = "Histograma", xlab= "Caballos de fuerza",
     ylab= "Frecuencia")

#Apariencia
x11()
hist(Data_Cars$hp, main = "Histograma", xlab= "Caballos de fuerza",
     ylab= "Frecuencia", col= "plum4")

#Cambiamos el limite del eje de ordenadas
x11()
hist(Data_Cars$hp, main = "Histograma", xlab= "Caballos de fuerza",
     ylab= "Frecuencia", col= "plum4", ylim= c(0,12))

#Histograma de densidad
x11()
hist(Data_Cars$hp, main = "Histograma de densidad", xlab= "Caballos de fuerza",
     ylab= "Densidad", col= "plum4", ylim= c(0,0.01),
     prob= T)

#Si queremos cambiar el n?mero de barras usamos breaks
x11()
par(mfrow= c(1,3))

hist(Data_Cars$hp, main = "Histograma de densidad", xlab= "Caballos de fuerza",
     ylab= "Densidad", col= "plum4", ylim= c(0,0.01),
     prob= T)

hist(Data_Cars$hp, main = "Histograma de densidad", xlab= "Caballos de fuerza",
     ylab= "Densidad", col= "skyblue", ylim= c(0,0.01),
     prob= T, breaks= 2)

hist(Data_Cars$hp, main = "Histograma de densidad", xlab= "Caballos de fuerza",
     ylab= "Densidad", col= "orange", ylim= c(0,0.01),
     prob= T, breaks= 40)

#rnorm (r significa random (aleatorio), norm significa normal)
#rnorm(n, mean, sd) donde n es el n?mero de valores a obtener
x <- rnorm(1000, mean= 0, sd= 2)    
y <- rnorm(500, mean= 0, sd= 2)

x11()
par(mfrow= c(1,2))
hist(x, main = "Primer histograma", ylab = "Frecuencia", col= "tomato2")
hist(y, main= "Segundo histograma", ylab= "Frecuencia", col= c("skyblue"))

#Histograma con dos variables
#add= TRUE nos permitir? unir un histograma con otro
x11()
hist(x, main = "Histograma con dos variables", ylab = "Frecuencia", 
     col= "tomato2")
hist(y, add = TRUE, col= c("skyblue"))

#Juntando los tres gr?ficos para visualizarlos
x11()
par(mfrow= c(1,3))
hist(x, main = "Primer histograma", ylab = "Frecuencia", col= "tomato2")
hist(y, main= "Segundo histograma", ylab= "Frecuencia", col= c("skyblue"))

hist(x, main = "Histograma con dos variables", ylab = "Frecuencia", 
     col= "tomato2")
hist(y, add = TRUE, col= c("skyblue"))

