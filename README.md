

°1 DESCRIPCION DE LO HECHO
Este proyecto fue realizado con el objetivo de poner en práctica lo que se a aprendido sobre el diseño y la creación de bases de datos relacionales.
En este caso usamos dos motores que son: PostgreSQL y MySQL, para entender mejor cómo funcionan y qué diferencias tienen entre sí.
Cada base representa un caso distinto:
-En PostgreSQL hice una base de datos para una librería.
-En MySQL creé una base de datos para la gestión académica de un colegio.
Cada base representa un caso diferente:
- En PostgreSQL se trabajó una base para una **librería**.  
- En MySQL se desarrolló una base para la **gestión académica de un colegio**.

°2 OBJETIVO DE LA ACTIVIDAD
Diseñar y construir bases de datos relacionales aplicando buenas prácticas de modelado, uso de claves primarias y foráneas, además de mantener la integridad de los datos y una buena documentación técnica.

°3 BASES DE DATOS 

-Base de datos (PostgreSQL — Librería)

Esta base de datos fue creada para manejar la información de autores, libros, clientes y ventas, simulando el funcionamiento de una librería real.
Tablas: autores, libros, clientes, ventas, detalle_ventas
El valor total se calcula con base en los detalles de la venta.


-Base de datos (MySQL — Gestión Académica)
Esta base fue hecha para administrar los estudiantes, profesores, materias, notas y grupos de un colegio.
Tablas: estudiantes, profesores, materias, notas, grupos
Cada estudiante pertenece a un grupo.
Las notas deben estar entre 0 y 5.

°4 Conceptos aplicados
-Modelo entidad-relación (E-R):Me ayudó a identificar las entidades, relaciones y atributos antes de crear las tablas.
-Normalización:Apliqué la normalización hasta la tercera forma normal (3FN) para evitar datos repetidos y mantener el orden.
-Claves primarias y foráneas:Las utilicé para conectar las tablas correctamente y garantizar la integridad de los datos.
-Restricciones:Implementé reglas como NOT NULL, UNIQUE y CHECK para asegurar que los datos sean válidos antes de guardarse.
-Scripts DDL y DML:Separé los scripts: los DDL para crear las tablas y los DML para insertar datos de ejemplo.
-Comparación entre motores:Noté que aunque PostgreSQL y MySQL son parecidos, cambian algunos comandos y tipos de datos.



MYSQL
MERMAID LINK: https://mermaid.live/edit#pako:eNptkD1vgzAQhv-KdTNBLth8eEOEgaFQAVkqFhdcglps5IDUlvDf66QkytCb7uN53zvdAo1qBTAQet_zTvOhlshEUlaHfRplVYLO591OLSjNyrhIX-I0zxBDvTw1un8Tf_RzVCVFGv2PNkpOvZAb-jjb8CyvIsM9QPGhKPPb-GbOkLlvHnktwYJO9y2wSc_CgkHogV9KWC7yGqajGEQNzKQt1x811HI1mpHLV6WGm0yruTsCe-efJ1PNY8snsf3g3tVCtkLHapYTsCfHuZoAW-ALmOM6NnYdPwwwwZ7rudSCb9MObUIxxSH2KPUJDlcLfq5rsR34FJugoYeJR0iw_gL-MHIJ
<img width="517" height="609" alt="image" src="https://github.com/user-attachments/assets/086f320b-0667-4edb-9f60-286e7bfe659f" />

POSTGRES
MERMAID: https://mermaid.live/edit#pako:eNqNU1FPwjAQ_ivNPSOpwMa2NwKYGIkaBR_MElLbExq3lnStUSf_3coAU8yiferdff2-7-62GrgWCBmgmUi2MqzMFfFnPLucXs-n5PPz7EzX5MEHI5IRg6yQH6zB3C_Gi7v70awFtETV4Jr8HjSZzkez2XR5AHOtrESFDfT27mayGM9v2tBYhfbqJiREKkt44YksLqUgt1eHQmWNVCuidPlk8CSJJZNFk9uetBQQV447U7Hi_8xCGuRcahWwN10E1K_eMQt5BbNInpGvWUtzF1dt5n4qypVoJCdWWxa2GI40MCPQg4uTAQYuQ-mN0cJxq39XOPNbFUyc2tn4sUi9dEpaZqQOjB13X7dp_DH7UCSYkdX85Sj2Ch1YGSkgs8ZhB_wr_yH4EHbKOdg1lphD5q-CmZcccrX1bzZMPWpdHp4Z7VZryJ5ZUfnIbb73tv-HjhBUAs1YO2UhOz8f7Dggq-ENsl6_16X93jBN6IDG_bgfdeDdp9PuIKIRTWkcRcMBTbcd-Nip0m4yjKg_SZLEwzSOo-0XUigigQhttps://mermaid.live/edit#pako:eNqNU1FPwjAQ_ivNPSOpwMa2NwKYGIkaBR_MElLbExq3lnStUSf_3coAU8yiferdff2-7-62GrgWCBmgmUi2MqzMFfFnPLucXs-n5PPz7EzX5MEHI5IRg6yQH6zB3C_Gi7v70awFtETV4Jr8HjSZzkez2XR5AHOtrESFDfT27mayGM9v2tBYhfbqJiREKkt44YksLqUgt1eHQmWNVCuidPlk8CSJJZNFk9uetBQQV447U7Hi_8xCGuRcahWwN10E1K_eMQt5BbNInpGvWUtzF1dt5n4qypVoJCdWWxa2GI40MCPQg4uTAQYuQ-mN0cJxq39XOPNbFUyc2tn4sUi9dEpaZqQOjB13X7dp_DH7UCSYkdX85Sj2Ch1YGSkgs8ZhB_wr_yH4EHbKOdg1lphD5q-CmZcccrX1bzZMPWpdHp4Z7VZryJ5ZUfnIbb73tv-HjhBUAs1YO2UhOz8f7Dggq-ENsl6_16X93jBN6IDG_bgfdeDdp9PuIKIRTWkcRcMBTbcd-Nip0m4yjKg_SZLEwzSOo-0XUigigQ
<img width="576" height="602" alt="image" src="https://github.com/user-attachments/assets/bde6a534-dd3b-4091-ba26-0bf696fd7ce6" /><img width="576" height="602" alt="image" src="https://github.com/user-attachments/assets/bde6a534-dd3b-4091-ba26-0bf696fd7ce6" />




