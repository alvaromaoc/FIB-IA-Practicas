package com.iaprojecteaca.FuncionesHeuristicas;

import aima.search.framework.HeuristicFunction;
import com.iaprojecteaca.Estado;

/** @class FuncionHeuristicaDoble
 @brief Funcion heuristica que prioriza el coste y la felicidad
 */
public class FuncionHeuristicaDoble implements HeuristicFunction
{
    /** @brief Hurístico de coste y felicidad
     * */
    public double getHeuristicValue(Object o)
    {
        Estado estado = (Estado) o;
        return estado.getCoste() - 5*estado.felicidad;
    }
}
