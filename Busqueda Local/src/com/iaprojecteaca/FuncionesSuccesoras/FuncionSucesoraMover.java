package com.iaprojecteaca.FuncionesSuccesoras;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;
import com.iaprojecteaca.Estado;

import java.util.ArrayList;
import java.util.List;

/** @class FuncionSucesoraMover
 @brief Funcion sucesora que solo utiliza el operador mover
 */
public class FuncionSucesoraMover implements SuccessorFunction
{
    /** @brief Sucesores resultantes de operar con Mover
     * */
    public List getSuccessors(Object o)
    {
        ArrayList<Successor> successors = new ArrayList<>();
        Estado estado = (Estado) o;
        for (int i = 0;i < estado.listaPaquetes.size();++i){
            for (int j = 0; j < estado.listaOfertas.size(); ++j){
                Estado nuevoEstado = new Estado(estado);
                StringBuilder stringBuilder = new StringBuilder();
                if (nuevoEstado.moverPaquete(i,j)){
                    stringBuilder.append("Movido paquete ").append(i).append(" a la oferta ").append(j).append("\n");
                    successors.add(new Successor(stringBuilder.toString(),nuevoEstado));
                }
            }
        }
        return successors;
    }
}
