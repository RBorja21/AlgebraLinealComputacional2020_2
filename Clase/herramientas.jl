"""
Genera la matriz de Vandermonde correspondiente al erreglo 1-D que recibe.

    Argumentos:

    arreglo -- Arreglo correspondiente que contiene las x´s -> areeglo = [x0, x1, x2, ... , xn]

    Return:

    matrizSol -- Matriz de Vandermonde  solución.
"""

function miVandermonde(arreglo)

    n = length(arreglo)
    #Genero una matriz de dimensión (n,n) donde guardare la matriz de Vandermonde
    matrizSol = zeros(n,n)

    #Genero la matriz de Vandermonde V_i^j = x_i^(j-1)
    for i in 1:n
        for j in 1:n
            matrizSol[i,j] =  arreglo[i]^(j-1)
        end
    end

    return matrizSol
end



"""
Implementa la solución numérica a la ecuación de Calor 1D

    Argumentos:

       L -- Longitud del intervalo en X 
       t -- Compomente temporal
       h -- Tamaño del paso  de mallado correspondiente en t
       k -- Tampaño del paso de mallado correspondiente en X
       D -- Constante de la ecuación de Calor

    Return:

      Arreglo en X
      Arreglo en t
      Solución de la ecuación diferencial

"""


function SolCalor(L, t, h, k, D)
    #intervalos
    x  = -L:k:L
    ts = 0:h:t
    
    #genero la estructura de datos donde guardo la solución
    xLong, tsLong = length(x), length(ts)
    Sol           = zeros(xLong, tsLong)
    
    #Impongo condicíon inicial 
    Sol[floor(Int, length(Sol[:,1])/2 + 1), 1] = 1
    
    #Itero para generar la solución
    cte = (h*D)/k^2
    
    for i in 1:length(ts) - 1
        for j in 2:length(x)-1
            Sol[j, i + 1] = cte*(Sol[j+1, i] - 2*Sol[j,i] + Sol[j-1, i]) + Sol[j, i]
        end
    end
    
    return ts, x, Sol
end






"""
Implementa la solución numérica a la ecuación de Calor 2D utilizando el
método de Crank-Nicolson

    Argumentos:

      xs --
      ys --
      ts --
      L  --
      M  --
      r  --
      t  --
      h  --



    Return:



"""

function CrankNicolson2d(L, k, M, r, t, h)
  xs = -L:k:L
  ys = -M:r:M
  ts = 0:h:t

end
