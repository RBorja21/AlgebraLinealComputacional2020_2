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
    #intervalos o mallado
    x  = -L:k:L
    ts = 0:h:t
    
    #genero la estructura de datos donde guardo la solución
    xLong, tsLong = length(x), length(ts)
    Sol           = zeros(xLong, tsLong)
    
    #Impongo condicíon inicial 
    Sol[floor(Int, length(Sol[:,1])/2 + 1), 1] = 1
 
    
    #Itero para generar la solución
    CourandNumber = (h*D)/k^2  
    
    for i in 1:length(ts) - 1
        for j in 2:length(x)-1
            Sol[j, i + 1] = Sol[j, i] + CourandNumber*(Sol[j+1, i] - 2*Sol[j,i] + Sol[j-1, i]) 
        end
    end
    
    return ts, x, Sol
end



""" 
    Genera malla circular de radio r dentro de una malla cuadrada. 

Argumentos: 
 
        L       -- Longitud de la caja más grande, valor entero. 
        deltaX  -- Espaciado de la malla, valor entero. 
        rangoX  -- Rango en el eje X de la malla circular, arreglo [punotInicial, puntoFinal]
        r       -- Radio de la malla circular, valor entero
        v0      -- Valor del Potencial V0 al que se encuentra la malla circular.

Return: 
        ladoCajaX -- Mallado del lado X de la caja 
        ladoCajaY -- Mallado del lado Y de la caja 
        Malla     -- Mallado que requiere el problema 
"""

function generaMallaCircular(L, deltaX, rangoX, r, v0)
    
    #Longitudes de la malla cuadrada
    ladoCajaX = -L/2:deltaX:L/2
    ladoCajaY = -L/2:deltaX:L/2
    
    #Geneno una matriz para guardar los valores del potencial
    malla = zeros(length(ladoCajaY), length(ladoCajaX))
    
    #Itero sobre los valores del mallado. 
    for l in 1:length(ladoCajaY)
        for k in 1:length(ladoCajaX)
            #si se encuentra en el circulo le asigno el valor del potencial V0
            if (rangoX[1] <= ladoCajaX[k] <= rangoX[2]) && 
                (-sqrt(r^2 - ladoCajaX[k]^2) <= ladoCajaY[l] <= sqrt(r^2 - ladoCajaX[k]^2))                
                malla[l,k] = v0
            else
                continue
            end
        end
    end
    
    return ladoCajaX, ladoCajaY, malla
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
