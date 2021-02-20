package com.iaprojecteaca;

import aima.search.framework.*;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;
import com.iaprojecteaca.FuncionesHeuristicas.FuncionHeuristica;
import com.iaprojecteaca.FuncionesHeuristicas.FuncionHeuristicaDoble;
import com.iaprojecteaca.FuncionesSuccesoras.FuncionSucesoraDoble;
import com.iaprojecteaca.FuncionesSuccesoras.FuncionSucesoraIntercambiar;
import com.iaprojecteaca.FuncionesSuccesoras.FuncionSucesoraMover;

import java.util.Scanner;

/** @class Main
 @brief Clase de visualitzacion i generadora de los Problemas
 */
public class Main
{
    /** @brief Scanner de la consola
     * */
    private static final Scanner scanner = new Scanner(System.in);

    /** @brief Funcion principal
     * */
    public static void main(String[] args)
    {

        System.out.println("Que seed para Paquetes quieres usar?");
        int seedPaquetes = scanner.nextInt();

        System.out.println("Que seed para Transporte quieres usar?");
        int seedTransporte = scanner.nextInt();

        System.out.println("Cuantos paquetes quieres generar?");
        int numeroPaquetes = scanner.nextInt();

        System.out.println("Que proporcion quieres usar?");
        double proporcion = scanner.nextDouble();

        System.out.println("Que Estado inicial quieres usar, 1 o 2?");
        int estadoInicial = scanner.nextInt();

        Search search;
        System.out.println("Que algoritmo de busqueda quieres usar, 1 para HC o 2 para SA?");
        int algoritmo = scanner.nextInt();
        if(algoritmo == 1) search = new HillClimbingSearch();
        else search = new SimulatedAnnealingSearch(10000, 100, 1, 0.001);

        HeuristicFunction heuristicFunction;
        System.out.println("Que Heuristico quieres usar, 1 para Coste o 2 para (Coste y Felicidad)?");
        int heuristico = scanner.nextInt();
        if (heuristico == 1) heuristicFunction = new FuncionHeuristica();
        else heuristicFunction = new FuncionHeuristicaDoble();

        SuccessorFunction funcionSucesora;
        System.out.println("Que generador de Sucesores quieres usar, 1 para Mover ,2 para Intercambiar o 3 para (Mover y Intercambiar)?");
        int sucesor = scanner.nextInt();
        if (sucesor == 1) funcionSucesora = new FuncionSucesoraMover();
        else if(sucesor == 2) funcionSucesora = new FuncionSucesoraIntercambiar();
        else funcionSucesora = new FuncionSucesoraDoble();

        try {
            long start = System.currentTimeMillis();

            Problem problem = new Problem(new Estado(numeroPaquetes,seedPaquetes, proporcion,seedTransporte,estadoInicial), funcionSucesora, new GoalTest(), heuristicFunction);
            SearchAgent agent = new SearchAgent(problem, search);

            long finish = System.currentTimeMillis();

            for (Object action : agent.getActions()) System.out.println(action.toString());
            System.out.print(search.getGoalState().toString());
            System.out.print('\n');
            for (Object o : agent.getInstrumentation().keySet()) {
                String key = (String) o;
                String property = agent.getInstrumentation().getProperty(key);
                System.out.println(key + " : " + property);
            }
            long timeElapsed = finish - start;
            System.out.println("Tiempo usado en hallar la solución en milisegundos : " + timeElapsed);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
