/*

  anchura(ArbolGenerico, Lista)
    es cierto si Lista unifica con las etiquetas de ArbolGenerico ordenadas según el recorrido de anchura del arbol.
    
    De examen
*/

anchura( a( Eti , ListaHijos), [ Eti | R ] ) :- anchura(ListaHijos, R). 

anchura( [] , [] ).
anchura( a( Eti , ListaHijos) | Resto ] , R2) :- append( Resto , ListaHijos, R), anchura( R , R2).  
