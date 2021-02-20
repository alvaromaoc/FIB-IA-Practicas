package com.iaprojecteaca;

import IA.Azamon.Oferta;
import IA.Azamon.Paquete;
import IA.Azamon.Paquetes;
import IA.Azamon.Transporte;
import aima.util.Pair;

import java.util.ArrayList;
import java.util.Comparator;

/** @class Estado
 @brief La classe que contiene el estado y opera sobre el
 */
public class Estado
{

    /** @brief Lista de objetos Paquete
     * */
    public final Paquetes listaPaquetes;

    /** @brief Lista de objetos Oferta
     * */
    public final Transporte listaOfertas;

    /** @brief Lista de asignacion de Paquetes: asignacionPaquetes.get(N) = K me indica que el paquete N esta asignado a la oferta K. Si K == -1 : El paquete no esta asignado todavia
     * */
    public final ArrayList<Integer> asignacionPaquetes;

    /** @brief Lista de capacidad de Oferta: capacidadRestanteOferta.get(K) = P me indica que a la oferta K le caben como máximo P kilogramos más
     * */
    public final ArrayList<Double> capacidadRestanteOferta;

    /** @brief Coste que pagamos por tener todos los paquetes en las ofertas
     * */
    public double costeTransporte;

    /** @brief Coste que pagamos por almacenar todos los paquetes
     * */
    public double costeAlmacenamiento;

    /** @brief Felicidad de todas las comandas
     * */
    public int felicidad;

    /** @brief Días máximos para entregar un paquete de prioridad 1
     * */
    private static final int DIAS_MAX_PR1 = 1;

    /** @brief Días máximos para entregar un paquete de prioridad 2
     * */
    private static final int DIAS_MAX_PR2 = 3;

    /** @brief Días máximos para entregar un paquete de prioridad 3
     * */
    private static final int DIAS_MAX_PR3 = 5;


    /** @brief Constructora de Estado a partir de otro Estado
     * @pre <em>estado</em> es un Estado valido
     * @post Las variables del Estado creado han sido actualizadas, se han copiado las assignaciones de los Paquetes del Estado pasado por parametro
     * */
    public Estado(Estado estado)
    {
        listaPaquetes = estado.listaPaquetes;
        listaOfertas = estado.listaOfertas;
        asignacionPaquetes = new ArrayList<>(estado.asignacionPaquetes);
        capacidadRestanteOferta = new ArrayList<>(estado.capacidadRestanteOferta);
        costeTransporte = estado.costeTransporte;
        costeAlmacenamiento = estado.costeAlmacenamiento;
        felicidad = estado.felicidad;

    }

    /** @brief Constructora de Estado a partir de variables de entrada para generar el Estado incial
     * @pre Variables validas para poder usar las classes Transporte y Paquetes
     * @post Las variables del Estado creado han sido actualizadas, se ha generado el Estado inicial, cada paquete ha sido asignado a una Oferta
     * */
    public Estado(int numeroPaquetes, int seedPaquetes, double proporcion, int seedTransporte, int estadoInicial)
    {
        listaPaquetes = new Paquetes(numeroPaquetes, seedPaquetes);
        listaOfertas = new Transporte(listaPaquetes, proporcion, seedTransporte);
        asignacionPaquetes = new ArrayList<>();
        capacidadRestanteOferta = new ArrayList<>();
        costeAlmacenamiento = 0.0;
        costeTransporte = 0.0;
        felicidad = 0;

        for (int i = 0; i < numeroPaquetes; ++i) asignacionPaquetes.add(-1);

        if(estadoInicial == 1)generarEstadoInicial1();
        else if(estadoInicial == 2)generarEstadoInicial2();
    }

    /** @brief Asigna todos los Paquetes a una oferta correspondiente a su prioridad empezando por ofertas con un precio/kg menor
     * @pre <em>listaPaquetes</em> y <em>listaOfertas</em> no estan vacios
     * @post Se ha actualizado <em>asignacionPaquetes</em> y <em>capacidadRestanteOferta</em>
     * */
    private void generarEstadoInicial1()
    {
        listaPaquetes.sort(Comparator.comparingInt(Paquete::getPrioridad));
        listaOfertas.sort(Comparator.comparingDouble(Oferta::getPrecio));
        for (IA.Azamon.Oferta oferta : listaOfertas) capacidadRestanteOferta.add(oferta.getPesomax());
        for (int i = 0; i < listaPaquetes.size(); ++i) {
            int j = 0;
            while (!moverPaquete(i,j)) ++j;
        }
    }

    /** @brief Asigna todos los Paquetes a una oferta correspondiente a su prioridad empezando por ofertas con un precio/kg mayor
     * @pre <em>listaPaquetes</em> y <em>listaOfertas</em> no estan vacios
     * @post Se ha actualizado <em>asignacionPaquetes</em> y <em>capacidadRestanteOferta</em>
     * */
    private void generarEstadoInicial2()
    {
        listaPaquetes.sort(Comparator.comparingInt(Paquete::getPrioridad));
        listaOfertas.sort((p1, p2) -> Double.compare(p2.getPrecio(), p1.getPrecio()));
        for (IA.Azamon.Oferta oferta : listaOfertas) capacidadRestanteOferta.add(oferta.getPesomax());
        for (int i = 0; i < listaPaquetes.size(); ++i) {
            int j = 0;
            while (!moverPaquete(i,j)) ++j;
        }
    }

    /** @brief Indica si una oferta tiene capacidad restante para alojar un paquete
     * @param posicionPaquete Paquete a comprobar
     * @param posicionOferta Oferta a analizar
     *
     * @pre <em>posicionPaquete</em> y <em>posicionOferta</em> estan dentro del rango <em>listaPaquetes</em> y <em>listaOfertas</em> respectivamente
     * @return Boleano indicando si SÍ cabe (True) o NO cabe (False)
     * */
    private boolean cabePaqueteEnOferta(int posicionPaquete, int posicionOferta)
    {
        return capacidadRestanteOferta.get(posicionOferta) >= listaPaquetes.get(posicionPaquete).getPeso();
    }

    /** @brief Indica si un paquete puede ser asignado a una oferta dependiendo de su prioridad y los dias de entrega de la oferta
     * @param posicionPaquete Paquete a comprobar
     * @param posicionOferta Oferta a analizar
     *
     * @pre <em>posicionPaquete</em> y <em>posicionOferta</em> estan dentro del rango <em>listaPaquetes</em> y <em>listaOfertas</em> respectivamente
     * @return Boleano indicando si SÍ es posible (True) o NO es posible (False)
     * */
    private boolean prioridadPosible(int posicionPaquete, int posicionOferta)
    {
        return diasMaximosPorPrioridad(listaPaquetes.get(posicionPaquete).getPrioridad()) >= listaOfertas.get(posicionOferta).getDias();
    }

    /** @brief Indica si un paquete esta asignado a una oferta
     * @param posicionPaquete Paquete a comprobar
     * @param posicionOferta Oferta a analizar
     *
     * @pre <em>posicionPaquete</em> esta dentro del rango de <em>asignacionPaquetes</em>
     * @return Boleano indicando si SÍ está asignado (True) o NO está signado (False)
     * */
    private boolean estaAsignado(int posicionPaquete, int posicionOferta)
    {
        return asignacionPaquetes.get(posicionPaquete) == posicionOferta;
    }

    /** @brief Indica si un paquete esta asignado
     * @param posicionPaquete Paquete a comprobar
     *
     * @pre <em>posicionPaquete</em> esta dentro del rango de <em>listaPaquetes</em>
     * @return Boleano indicando si SÍ está asignado (True) o NO está signado (False)
     * */
    private boolean paqueteAsignado(int posicionPaquete)
    {
        return !estaAsignado(posicionPaquete,-1);
    }

    /** @brief Indica si las ofertas de dos paquetes podrian contener al paquete contrario a cambio del primero segun su peso
     * @param posicionPaquete1 Primer Paquete a comprobar
     * @param posicionPaquete2 Segundo Paquete a comprobar
     *
     * @pre <em>posicionPaquete</em> 1 y 2 estan dentro del rango de <em>listaPaquetes</em> y estan asignados a una Oferta
     * @return Boleano indicando si SÍ es posible (True) o NO es posible (False)
     * */
    private boolean cabenPaquetesEnMutuasOfertas(int posicionPaquete1, int posicionPaquete2)
    {
        Double capacidadOferta1 = capacidadRestanteOferta.get(asignacionPaquetes.get(posicionPaquete1));
        Double capacidadOferta2 = capacidadRestanteOferta.get(asignacionPaquetes.get(posicionPaquete2));
        Double pesoPaquete1 = listaPaquetes.get(posicionPaquete1).getPeso(), pesoPaquete2 = listaPaquetes.get(posicionPaquete2).getPeso();
        return capacidadOferta1 + pesoPaquete1 >= pesoPaquete2 && capacidadOferta2 + pesoPaquete2 >= pesoPaquete1;
    }

    /** @brief Indica en cuantos días como máximo podemos entregar un paquete según su proridad
     * @param prioridad Prioridad del paquete
     *
     * @pre <em>prioridad</em> tiene valor entre 0 y 2
     * @return Entero indicando los días
     * */
    private int diasMaximosPorPrioridad(int prioridad)
    {
        if (prioridad == Paquete.PR1) return DIAS_MAX_PR1;
        if (prioridad == Paquete.PR2) return DIAS_MAX_PR2;
        else return DIAS_MAX_PR3;
    }

    /** @brief Decrementa la capacidad restante de una Oferta
     * @param posicionPaquete Paquete a insertar
     * @param posicionOferta Oferta a actualizar
     *
     *@pre <em>posicionPaquete</em> y <em>posicionOferta</em> estan dentro del rango de <em>listaPaquetes</em> y <em>listaOfertas</em> respectivamente
     * @post Se ha acualizado el peso de la oferta de <em>posicionOferta</em> en la que se ha puesto el paquete de <em>posicionPaquete</em>
     * */
    private void ponerPesoPaquete(int posicionPaquete, int posicionOferta)
    {
        capacidadRestanteOferta.set(posicionOferta, capacidadRestanteOferta.get(posicionOferta) - listaPaquetes.get(posicionPaquete).getPeso());
    }

    /** @brief Incrementa la capacidad restante de una la oferta a la que esta asignada un Paquete
     * @param posicionPaquete Paquete a retirar
     *
     * @pre <em>posicionPaquete</em> y <em>posicionOferta</em> estan dentro del rango de <em>listaPaquetes</em> y <em>listaOfertas</em> respectivamente
     * @post Se ha acualizado el peso de la Oferta de <em>posicionOferta</em> en la que se ha quitado el Paquete de <em>posicionPaquete</em>
     * */
    private void quitarPesoPaquete(int posicionPaquete)
    {
        capacidadRestanteOferta.set(asignacionPaquetes.get(posicionPaquete), capacidadRestanteOferta.get(asignacionPaquetes.get(posicionPaquete)) + listaPaquetes.get(posicionPaquete).getPeso());
    }

    /** @brief Calcula los coste que nos cuesta mantener un Paquete en una Oferta
     * @param paquete Paquete con el que calcular
     * @param oferta Oferta con la que calcular
     *
     * @pre <em>paquete</em> y <em>oferta</em> existentes
     * @return Pair indicando el Coste de almacenamiento y transporte resultante
     * */
    private Pair costePaquete(Paquete paquete, Oferta oferta)
    {
        double precioAlamcenamiento = 0.0;
        double precioTransporte = 0.0;
        if (oferta.getDias() == 3 || oferta.getDias() == 4) {
            precioAlamcenamiento = paquete.getPeso() * 0.25;
        }
        if (oferta.getDias() == 5) {
            precioAlamcenamiento = paquete.getPeso() * 0.5;
        }
        precioTransporte += oferta.getPrecio() * paquete.getPeso();
        return new Pair(precioAlamcenamiento,precioTransporte);
    }

    /** @brief Calcula la felicidad que nos aporta tener un Paquete en una Oferta
     * @param paquete Paquete con el que calcular
     * @param oferta Oferta con la que calcular
     *
     * @pre <em>paquete</em> y <em>oferta</em> existentes
     * @return int indicando la Felicidad resultante
     * */
    private int felicidadPaquete(Paquete paquete, Oferta oferta)
    {
        int felicidadPaquete = 0;
        if (paquete.getPrioridad() == Paquete.PR2) {
            int DIAS_MAX_PR2 = 3;
            felicidadPaquete = DIAS_MAX_PR2 - oferta.getDias();
        }
        if (paquete.getPrioridad() == Paquete.PR3) {
            int DIAS_MAX_PR3 = 5;
            felicidadPaquete = DIAS_MAX_PR3 - oferta.getDias();
        }
        return felicidadPaquete;
    }


    /** @brief Asigna un Paquete a una Oferta
     * @param posicionPaquete Paquete a asignar
     * @param posicionOferta Oferta donde asignar
     *
     * @pre <em>posicionPaquete</em> y <em>posicionOferta</em> estan dentro el rango de <em>listaPaquetes</em> y <em>listaOfertas</em> respectivamente
     * @post Se ha actualizado el peso de la Oferta y se ha asignado el Paquete en una esa Oferta
     * */
    private void asignarPaquete(int posicionPaquete, int posicionOferta)
    {
        ponerPesoPaquete(posicionPaquete,posicionOferta);
        asignacionPaquetes.set(posicionPaquete, posicionOferta);
    }

    /** @brief Retira un Paquete de la Oferta donde esta asignado
     * @param posicionPaquete Paquete a retirar
     *
     * @pre <em>posicionPaquete</em> esta dentro del rango de <em>listaPaquetes</em>
     * @post Se ha actualizado el peso de la Oferta y se ha desasignado el Paquete de esa Oferta
     * */
    private void quitarPaquete(int posicionPaquete)
    {
        quitarPesoPaquete(posicionPaquete);
        asignacionPaquetes.set(posicionPaquete, -1);
    }

    /** @brief Intercambia, si es posible, dos Paquetes de Oferta entre ellos
     * @param posicionPaquete1 Primer Paquete a intercambiar
     * @param posicionPaquete2 Segundo Paquete a intercambiar
     *
     * @pre <em>posicionPaquete</em> 1 y 2 estan dentro del rango de <em>listaPaquetes</em>
     * @post Si se el primer Paquete ha sido asignado a la Oferta del segundo Paquete y el segundo Paquete ha sido asignado a la Oferta,  el peso de cada Oferta se actualizara al igual que los Costes y la Felicidad total
     * @return Boleano indicando si Sí ha sido posible (True) o No ha sido posible (False) el intercambio
     * */
    public boolean intercambiarPaquete(int posicionPaquete1, int posicionPaquete2)
    {
        if (posicionPaquete1 == posicionPaquete2) return false;
        if (estaAsignado(posicionPaquete1,asignacionPaquetes.get(posicionPaquete2))) return false;
        if (!prioridadPosible(posicionPaquete1,asignacionPaquetes.get(posicionPaquete2))) return false;
        if (!prioridadPosible(posicionPaquete2,asignacionPaquetes.get(posicionPaquete1))) return false;
        Integer oferta1 = asignacionPaquetes.get(posicionPaquete1), oferta2 = asignacionPaquetes.get(posicionPaquete2);
        if (!cabenPaquetesEnMutuasOfertas(posicionPaquete1, posicionPaquete2)) return false;

        costeAlmacenamiento -= (double) costePaquete(listaPaquetes.get(posicionPaquete1),listaOfertas.get(asignacionPaquetes.get(posicionPaquete1))).getFirst();
        costeTransporte -= (double) costePaquete(listaPaquetes.get(posicionPaquete1),listaOfertas.get(asignacionPaquetes.get(posicionPaquete1))).getSecond();
        felicidad -= felicidadPaquete(listaPaquetes.get(posicionPaquete1),listaOfertas.get(asignacionPaquetes.get(posicionPaquete1)));
        quitarPaquete(posicionPaquete1);

        costeAlmacenamiento -= (double) costePaquete(listaPaquetes.get(posicionPaquete2),listaOfertas.get(asignacionPaquetes.get(posicionPaquete2))).getFirst();
        costeTransporte -= (double) costePaquete(listaPaquetes.get(posicionPaquete2),listaOfertas.get(asignacionPaquetes.get(posicionPaquete2))).getSecond();
        felicidad -= felicidadPaquete(listaPaquetes.get(posicionPaquete2),listaOfertas.get(asignacionPaquetes.get(posicionPaquete2)));
        quitarPaquete(posicionPaquete2);

        asignarPaquete(posicionPaquete2, oferta1);
        costeAlmacenamiento += (double) costePaquete(listaPaquetes.get(posicionPaquete2),listaOfertas.get(oferta1)).getFirst();
        costeTransporte += (double) costePaquete(listaPaquetes.get(posicionPaquete2),listaOfertas.get(oferta1)).getSecond();
        felicidad += felicidadPaquete(listaPaquetes.get(posicionPaquete2),listaOfertas.get(asignacionPaquetes.get(posicionPaquete2)));

        asignarPaquete(posicionPaquete1, oferta2);
        costeAlmacenamiento += (double) costePaquete(listaPaquetes.get(posicionPaquete1),listaOfertas.get(oferta2)).getFirst();
        costeTransporte += (double) costePaquete(listaPaquetes.get(posicionPaquete1),listaOfertas.get(oferta2)).getSecond();
        felicidad += felicidadPaquete(listaPaquetes.get(posicionPaquete1),listaOfertas.get(asignacionPaquetes.get(posicionPaquete1)));

        return true;
    }

    /** @brief Mueve, si es posible, un Paquete a una Oferta
     * @param posicionPaquete Paquete a mover
     * @param posicionOferta Oferta destino
     *
     * @pre <em>posicionPaquete</em> y <em>posicionOferta</em> estan dentro del rango de <em>listaPaquetes</em> y <em>listaOfertas</em>
     * @post Si el Paquete ha sido desasignado de la vieja Oferta y se ha asignado a la nueva Oferta, el peso de cada Oferta se actualizara al igual que el Coste y la Felicidad total
     * @return Boleano indicando si Sí ha sido posible (True) o No ha sido posible (False) el movimiento
     * */
    public boolean moverPaquete(int posicionPaquete, int posicionOferta)
    {
        if (estaAsignado(posicionPaquete,posicionOferta)) return false;
        if (!prioridadPosible(posicionPaquete,posicionOferta)) return false;
        if (!cabePaqueteEnOferta(posicionPaquete,posicionOferta)) return false;
        if (paqueteAsignado(posicionPaquete)){
            costeAlmacenamiento -= (double) costePaquete(listaPaquetes.get(posicionPaquete),listaOfertas.get(asignacionPaquetes.get(posicionPaquete))).getFirst();
            costeTransporte -= (double) costePaquete(listaPaquetes.get(posicionPaquete),listaOfertas.get(asignacionPaquetes.get(posicionPaquete))).getSecond();
            felicidad -= felicidadPaquete(listaPaquetes.get(posicionPaquete),listaOfertas.get(asignacionPaquetes.get(posicionPaquete)));
            quitarPaquete(posicionPaquete);
        }

        asignarPaquete(posicionPaquete,posicionOferta);
        costeAlmacenamiento += (double) costePaquete(listaPaquetes.get(posicionPaquete),listaOfertas.get(posicionOferta)).getFirst();
        costeTransporte += (double) costePaquete(listaPaquetes.get(posicionPaquete),listaOfertas.get(posicionOferta)).getSecond();
        felicidad += felicidadPaquete(listaPaquetes.get(posicionPaquete),listaOfertas.get(posicionOferta));

        return true;
    }

    /** @brief Coste total del estado
     *
     * @return Double con los costes de Almacenamiento y Transporte sumados
     * */
    public double getCoste()
    {
        return costeAlmacenamiento + costeTransporte;
    }

    /** @brief Imprime por pantalla cada Oferta y los Paquetes que contiene
     * */
    public String toString()
    {
        StringBuilder estado = new StringBuilder();
        for (int i = 0; i < listaOfertas.size(); ++i){
            estado.append(listaOfertas.get(i).toString()).append('\n');
            for (int j = 0;j < listaPaquetes.size();++j){
                if (asignacionPaquetes.get(j) == i){
                    estado.append('\t').append(listaPaquetes.get(j).toString()).append('\n');
                }
            }
            estado.append('\n');
        }
        estado.append("Coste total: ").append(getCoste()).append(" Felicidad: ").append(felicidad);
        return estado.toString();
    }
}