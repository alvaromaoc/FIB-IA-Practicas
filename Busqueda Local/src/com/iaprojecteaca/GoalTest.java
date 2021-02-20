package com.iaprojecteaca;

/** @class GoalTest
 @brief Estado final del problema
 */
public class GoalTest implements aima.search.framework.GoalTest
{
    /** @brief Retorna siempre false porque en búsqueda local no hay GoalState
     * */
    public boolean isGoalState(Object o)
    {
        return false;
    }
}
