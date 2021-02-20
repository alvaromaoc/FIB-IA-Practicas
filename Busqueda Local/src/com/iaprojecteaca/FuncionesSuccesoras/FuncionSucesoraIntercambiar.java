package com.iaprojecteaca.FuncionesSuccesoras;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;
import com.iaprojecteaca.Estado;

import java.util.ArrayList;
import java.util.List;

/** @class FuncionSucesoraIntercambiar
 @brief Funcion sucesora que solo utiliza el operador intercambiar
 */
public class FuncionSucesoraIntercambiar implements SuccessorFunction
{
    /** @brief Sucesores resultantes de operar con Intercambiar
     * */
    public List getSuccessors(Object o)
    {
        ArrayList<Successor> successors = new ArrayList<>();
        Estado estado = (Estado) o;
        for (int i = 0;i < estado.listaPaquetes.size();++i){
            for (int j = 0;j < estado.listaPaquetes.size();++j){
                Estado nuevoEstado = new Estado(estado);
                StringBuilder stringBuilder = new StringBuilder();
                if (nuevoEstado.intercambiarPaquete(i,j)){
                    stringBuilder.append("Intercambiado paquete ").append(i).append(" por paquete ").append(j).append("\n");
                    successors.add(new Successor(stringBuilder.toString(),nuevoEstado));
                }
            }
        }
        return successors;
    }
}
