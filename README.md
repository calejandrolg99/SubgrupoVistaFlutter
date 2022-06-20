# SubgrupoVistaFlutter

## Short Paper 2

### Commits relevantes: Jose Flores

#### "ListView - ItemView"

Se definieron las abstracciones ListView y ItemView, para poder construir a nivel de UI las listas de los datos
pertenecientes a un contexto. Sus subclases "DoctorListView" y "DoctorItemView" extienden este comportamiento
para manejar los datos asociados a los doctores.

#### "ConsultPage - ConsultPageState"

Se definieron las abstracciones necesarias para construir la pagina con sus componentes de
acuerdo al contexto, y poder manejar su State.

#### "PageController + Algunos cambios"

Se estableció la Abstraccion PageController para el manejo de las peticiones a una API determinada, para poder
retornarles los datos requeridos al manejador de estados de la pagina. Desacoplando así, las vistas de la forma
de obtener los datos. 

#### "Patron Adapter en PageController"

Se aplico el patrón Adapter en PageController, para poder convertir los datos obtenidos al formato que es requerido
por el manejador de estados de la pagina. Generando esto un nivel mas de indirección.


### Commits relevantes: Alines Ortiz

#### "Filtering"

Se establecio un inicial para el uso del filtro por especialidad sobre la data de los doctores.

#### "Pasing-Data"

Se utilizo el Servicio Nest para la obtencion de datos desde la base de datos. Se creo un modelo para la traduccion de la data, para poder ser mostrada en la aplicacion movil con los widgets de flutter.

#### "Pasing-Data"

Se definieron las abstracciones necesarias sobre la traduccion de datos de doctores. Mas algunos detalles.

#### "Pasing-Data"

Se crean las clases SpecialtiesController y SpecialtiesComtrollerAdapter partiendo de las abstracciones PageController y PageControllerAdapter, para la obtencion de especialidades y su traduccion desde el futuro. Ademas, se dieron las modificaciones finales para la aplicacion final, como la llamada inicial para la obtencion de especialidades y estructuracion de la misma.
