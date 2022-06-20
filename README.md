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