"""
Genera la matriz de Vandermonde correspondiente al erreglo 1-D que recibe.

    Argumentos:

    arreglo -- Arreglo correspondiente que contiene las x´s -> areeglo = [x0, x1, x2, ... , xn]

    Return:

    matrizSol -- Matriz de Vandermonde  solución.
"""

function miVandermonde(arreglo)

    n = length(arreglo)
    #Genero una matriz de dimensión (n,n) donde alvergare la matriz de Vandermonde
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

       L -- Longitud del intervalo en X, arreglo
       t -- Compomente temporal, arreglo
       h -- Tamaño del paso  de mallado correspondiente en t
       k -- Tampaño del paso de mallado correspondiente en X
       D -- Constante de la ecuación de Calor

    Return:

      Arreglo en X
      Arreglo en t
      Solución de la ecuación diferencial

"""


function heat_eq(L, t, h, k, D)
    xs = -L:k:L
    ts = 0:h:t
    #¿?
    #¿? Condición de la Delta
    sols = []
    for n in ts
        for i in #¿?
            us[i] = γ*(us_0[i + 1] + us_0[i - 1] #¿?
        end
        us_0 = copy(us)
        push!(sols, us_0)
    end
    return #¿?
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
