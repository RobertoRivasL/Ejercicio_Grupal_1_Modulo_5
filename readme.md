


+----+-----------------+----------------------------+-----------------+

> **En este ejercicio se pide hacer lo siguiente:**

1.  Crear un proyecto web dinámico utilizando la herramienta Eclipse en
    su distribución **Eclipse IDE For Enterprise Java Developer**.

2.  Configurar el ambiente de servidor apache Tomcat para poder levantar
    el proyecto web.

3.  Construir tres Servlets que rescaten información desde un request
    GET/POST utilizando tecnología Java acorde al estándar J2EE.

> Se solicita crear tres servlets, uno para cada uno de los tres
> primeros casos de uso de la lista anterior (Inicio, Contacto, Crear
> Capacitación).
>
> Cada Servlet debe únicamente mostrar, ya sea generando el código HTML
> del sitio o llamando a un archivo JSP, la interfaz asociada cada caso
> de uso.
>
> Recuerde que la interfaz del sitio debe ser responsiva y debe tener
> estilos aplicados. Si la página hace uso de funciones Javascript o
> jQuery debe integrarlas.
>
> El entregable debe ser un proyecto web dinámico Java comprimido en
> formato RAR o ZIP.
>
> **Nota 1:** Desde ya se recomienda explorar en la integración de
> Eclipse y Git, usando un repositorio compartido en la nube en el cual
> pueda trabajar el equipo completo.



+-----------------------------------------------
| > El Datos de apoyo al planteamiento                                  |
+----------------------------------------------------------------+
| > **Ejecución**: Grupal (equipo de no más 4 personas)                 |
| >                                                                     |
| > **Componentes para evaluar**: Se deberá entregar un proyecto Java   |
| > web dinámico, comprimido en formato ZIP o RAR.                      |
+-------------------------------+

| > Recursos Bibliográficos:                                            |
+--------------+
| > **\[1\] Qué es Java Enterprise (J2ee, JEE)**                        |
| >                                                                     |
| > [[https://www.fundesem.es/bt/publicacion-java-ee-y-el-desarrol      |
| lo-web-un-enfoque-deaprendizaje]{.underline}](https://www.fundesem.es |
| /bt/publicacion-java-ee-y-el-desarrollo-web-un-enfoque-de aprendizaje) |
+---------------------------------

<span style="color:red">**Ejercicio Grupal 1 Modulo 5**</span>


## **Integrantes :**
<table>
  <tr>
    <td><img src="https://img.shields.io/badge/Angelica%20-%20Romero%20-%20violet?cacheSeconds=3200"></td>
    <td><img src="https://img.shields.io/badge/Bastian%20-%20Mariangel%20-%20red?cacheSeconds=3200"></td>
    <td><img src="https://img.shields.io/badge/Ivan%20-%20Mieres%20-%20green?cacheSeconds=3200"></td>
    <td><img src="https://img.shields.io/badge/Patricio%20-%20Bonnin%20-%20brown?cacheSeconds=3200"></td>
    <td><img src="https://img.shields.io/badge/Roberto%20-%20Rivas%20-%20blue?cacheSeconds=3200"</td>

  </tr>
</table>

![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_1_Modulo_5/assets/131497718/f2e3ccf5-ed7e-402c-9d2d-9bb247b0cc34)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_1_Modulo_5/assets/131497718/863694f5-40ec-408b-b68b-5c3f14a579ab)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_1_Modulo_5/assets/131497718/9f570e72-d6ce-49fa-a9a3-1347a84af0d1)
![image](https://github.com/RobertoRivasL/Ejercicio_Grupal_1_Modulo_5/assets/131497718/e66849ea-ac46-43ac-ad08-30959f615190)


Este código se refiere a una aplicación web desarrollada en Java utilizando el framework Jakarta Servlets. Esta aplicación consta de tres servlets y tres clases de modelos que se utilizan para gestionar diferentes aspectos de la aplicación web.

**Servlets:**

1. **Inicio.java:** Este servlet maneja las solicitudes GET y POST relacionadas con la página de inicio de la aplicación. En la solicitud GET, simplemente responde con un mensaje que indica que la página se sirve en la ruta actual. En la solicitud POST, no hace nada especial y simplemente llama al método `doGet()`.

2. **Contacto.java:** Este servlet maneja las solicitudes GET y POST relacionadas con la página de contacto de la aplicación. En la solicitud GET, responde de manera similar a "Inicio.java". En la solicitud POST, recopila información del formulario (nombre, correo y mensaje) a través de los parámetros de solicitud, la almacena en atributos de solicitud y luego redirige la solicitud a "/contacto.jsp".

3. **Capacitacion.java:** Este servlet maneja las solicitudes GET y POST relacionadas con la capacitación en la aplicación. En la solicitud GET, responde de manera similar a los otros servlets. En la solicitud POST, recopila información del formulario (rutCliente, día, hora, lugar, duración y cantidadAsistentes), la almacena en atributos de solicitud y luego redirige la solicitud a "/capacitacion.jsp".

**Models:**

1. **Inicio.java (en el paquete "models"):** Esta clase es una clase vacía.

2. **Contacto.java (en el paquete "models"):** Esta clase de modelo representa un formulario de contacto y contiene atributos para el nombre, el correo y el mensaje. Tiene métodos getter y setter para acceder y modificar estos atributos.

3. **Capacitacion.java (en el paquete "models"):** Esta clase de modelo representa la información de una capacitación y contiene atributos como identificador, rut del cliente, día, hora, lugar, duración y cantidad de asistentes. Al igual que la clase de contacto, tiene métodos getter y setter para estos atributos.

En resumen, este código se utiliza para crear una aplicación web básica que maneja solicitudes GET y POST para las páginas de inicio, contacto y capacitación. Los datos del formulario se recopilan y se pasan a las páginas JSP correspondientes para su visualización o procesamiento adicional. Las clases de modelo se utilizan para representar la información de contacto y capacitación.
