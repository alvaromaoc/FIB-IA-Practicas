package com.iaprojecteaca.FuncionesHeuristicas;

import aima.search.framework.HeuristicFunction;
import com.iaprojecteaca.Estado;

/** @class FuncionHeuristica
 @brief Funcion heuristica que solo prioriza el coste
 */
public class FuncionHeuristica implements HeuristicFunction
{
    /** @brief Hurístico de coste
     * */
    public double getHeuristicValue(Object o)
    {
        return ((Estado) o).getCoste();
    }
}
