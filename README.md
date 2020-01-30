# 2020_2 Métodos Numéricos y Algoritmos Computacionales  (8368)


## Álgebra Lineal Computacional 

 <p align="center">
  <img src="imagenes/logo.png" width="300px" height="300px"/>
</p>


### Lugar y horario: 
Aula Servando de la Cruz (primer piso del **Instituto de Geofísica**) , **martes** y **jueves**  13:00 PM - 14:30 PM 


### Evaluación

-  Tares y Ejercicios: 70%
- Ensayo: 30%


### Instalar Julia y Jupyter localmente 

Para instalar Julia y Jupyter localmente en sus computadoras, se siguen los siguientes pasos. 

1. Descarga e instala la versión 1.3  de Julia [aquí](https://julialang.org/downloads/) para el sistema operativo que uses. 

2. Corre la copia de Julia que instalaste. 

Ejecuta los siguientes comando en la terminal del entorno de Julia ("REPL"), en donde veras un `julia>`.

3. Si usas Linux o MAC, primero teclea:
 ```jl
 julia> ENV["JUPYTER"] = ""
 ```
 
 4. Teclea 
 ```jl
 julia> using Pkg
 ```
 
5. Ahora instala el paquete IJulia, que automáticamente instalará Jupyter (usando `miniconda`):
 ```
 julia> Pkg.add("IJulia")
 ```
 
 6. Abre el notebook  como sigue.
 ```jl
 julia> using IJulia
 julia> notebook()
 ```
 
 Los notebooks por default se crean en el directorio principal. Se puede abrir o crear una carpeta para guardar los notebook en un directorio de tu preferencia. 
 

