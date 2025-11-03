# 🗃️ Proyecto de Bases de Datos Relacionales — PostgreSQL y MySQL

## 📖 Descripción del proyecto
Este proyecto fue realizado con el propósito de aplicar los conocimientos aprendidos sobre el diseño y la creación de bases de datos relacionales.  
Se desarrollaron **dos bases de datos** diferentes: una en **PostgreSQL** y otra en **MySQL**, con el fin de practicar el uso de ambos motores y entender sus diferencias.

Cada base representa un caso diferente:
- En PostgreSQL se trabajó una base para una **librería**.  
- En MySQL se desarrolló una base para la **gestión académica de un colegio**.

---

## 🎯 Objetivo general
Diseñar y construir bases de datos relacionales aplicando buenas prácticas de modelado, uso de claves, integridad referencial y documentación técnica.

---

## 🧩 Bases de datos creadas

### 🔹 Base de datos 1: PostgreSQL — *Librería*
Esta base permite administrar la información de los **autores, libros, clientes y ventas**.  
Fue creada para simular el funcionamiento de una librería real.

**Características principales:**
- Motor: PostgreSQL  
- Tablas: `autores`, `libros`, `clientes`, `ventas`, `detalle_ventas`
- Reglas de negocio:
  - No se pueden registrar ventas sin cliente.
  - El valor total se calcula según los detalles de la venta.
  - No se pueden registrar libros sin autor.

---

### 🔹 Base de datos 2: MySQL — *Gestión Académica*
Esta base sirve para controlar la información de **estudiantes, profesores, materias, notas y grupos** de un colegio.

**Características principales:**
- Motor: MySQL  
- Tablas: `estudiantes`, `profesores`, `materias`, `notas`, `grupos`
- Reglas de negocio:
  - Cada estudiante pertenece a un grupo.
  - Cada profesor puede dictar varias materias.
  - Las notas deben estar entre 0 y 5.

---

## ⚙️ Conceptos aplicados

- **Modelo entidad-relación (E-R):**  
  Se diseñaron los diagramas para identificar las entidades, relaciones y atributos de cada base.

- **Normalización:**  
  Se aplicaron las reglas de normalización hasta la tercera forma normal (3FN) para evitar datos repetidos y mantener la integridad.

- **Claves primarias y foráneas:**  
  Se usaron para relacionar las tablas correctamente y asegurar que los datos estén conectados de manera lógica.

- **Restricciones:**  
  Se usaron reglas como `NOT NULL`, `UNIQUE` y `CHECK` para validar los datos antes de guardarlos.

- **Scripts DDL y DML:**  
  Los scripts DDL se usaron para crear las tablas, y los DML para insertar y modificar los datos de ejemplo.

- **Comparación de motores:**  
  Se observó que aunque ambos motores son similares, cambian algunos comandos y tipos de datos entre PostgreSQL y MySQL.

---

## 🧠 Decisiones de diseño

1. Se eligieron dos temas diferentes (librería y colegio) para tener ejemplos variados.  
2. Los nombres de tablas y campos se escribieron en minúsculas y en singular.  
3. Se usaron claves foráneas con opciones `ON DELETE CASCADE` para mantener la integridad referencial.  
4. Se dividieron los scripts en DDL y DML para tener mejor organización.  
5. Se creó este archivo README para explicar el trabajo de forma clara y sencilla.

---

## 📄 Evidencias del proyecto

- **Diagramas E-R:**  
  - `/diagramas/ER_libreria.png`  
  - `/diagramas/ER_colegio.png`

- **Scripts SQL:**  
  - `/scripts/postgresql_ddl.sql`  
  - `/scripts/postgresql_dml.sql`  
  - `/scripts/mysql_ddl.sql`  
  - `/scripts/mysql_dml.sql`

---

## 🧾 Instrucciones para ejecutar los scripts

### 🔸 PostgreSQL
1. Abrir la consola de **psql**.  
2. Crear la base de datos:
   ```sql
   CREATE DATABASE bd_libreria;


MYSQL
MERMAID LINK: https://mermaid.live/edit#pako:eNptkD1vgzAQhv-KdTNBLth8eEOEgaFQAVkqFhdcglps5IDUlvDf66QkytCb7uN53zvdAo1qBTAQet_zTvOhlshEUlaHfRplVYLO591OLSjNyrhIX-I0zxBDvTw1un8Tf_RzVCVFGv2PNkpOvZAb-jjb8CyvIsM9QPGhKPPb-GbOkLlvHnktwYJO9y2wSc_CgkHogV9KWC7yGqajGEQNzKQt1x811HI1mpHLV6WGm0yruTsCe-efJ1PNY8snsf3g3tVCtkLHapYTsCfHuZoAW-ALmOM6NnYdPwwwwZ7rudSCb9MObUIxxSH2KPUJDlcLfq5rsR34FJugoYeJR0iw_gL-MHIJ
<img width="517" height="609" alt="image" src="https://github.com/user-attachments/assets/086f320b-0667-4edb-9f60-286e7bfe659f" />

POSTGRES
MERMAID: https://mermaid.live/edit#pako:eNqNU1FPwjAQ_ivNPSOpwMa2NwKYGIkaBR_MElLbExq3lnStUSf_3coAU8yiferdff2-7-62GrgWCBmgmUi2MqzMFfFnPLucXs-n5PPz7EzX5MEHI5IRg6yQH6zB3C_Gi7v70awFtETV4Jr8HjSZzkez2XR5AHOtrESFDfT27mayGM9v2tBYhfbqJiREKkt44YksLqUgt1eHQmWNVCuidPlk8CSJJZNFk9uetBQQV447U7Hi_8xCGuRcahWwN10E1K_eMQt5BbNInpGvWUtzF1dt5n4qypVoJCdWWxa2GI40MCPQg4uTAQYuQ-mN0cJxq39XOPNbFUyc2tn4sUi9dEpaZqQOjB13X7dp_DH7UCSYkdX85Sj2Ch1YGSkgs8ZhB_wr_yH4EHbKOdg1lphD5q-CmZcccrX1bzZMPWpdHp4Z7VZryJ5ZUfnIbb73tv-HjhBUAs1YO2UhOz8f7Dggq-ENsl6_16X93jBN6IDG_bgfdeDdp9PuIKIRTWkcRcMBTbcd-Nip0m4yjKg_SZLEwzSOo-0XUigigQhttps://mermaid.live/edit#pako:eNqNU1FPwjAQ_ivNPSOpwMa2NwKYGIkaBR_MElLbExq3lnStUSf_3coAU8yiferdff2-7-62GrgWCBmgmUi2MqzMFfFnPLucXs-n5PPz7EzX5MEHI5IRg6yQH6zB3C_Gi7v70awFtETV4Jr8HjSZzkez2XR5AHOtrESFDfT27mayGM9v2tBYhfbqJiREKkt44YksLqUgt1eHQmWNVCuidPlk8CSJJZNFk9uetBQQV447U7Hi_8xCGuRcahWwN10E1K_eMQt5BbNInpGvWUtzF1dt5n4qypVoJCdWWxa2GI40MCPQg4uTAQYuQ-mN0cJxq39XOPNbFUyc2tn4sUi9dEpaZqQOjB13X7dp_DH7UCSYkdX85Sj2Ch1YGSkgs8ZhB_wr_yH4EHbKOdg1lphD5q-CmZcccrX1bzZMPWpdHp4Z7VZryJ5ZUfnIbb73tv-HjhBUAs1YO2UhOz8f7Dggq-ENsl6_16X93jBN6IDG_bgfdeDdp9PuIKIRTWkcRcMBTbcd-Nip0m4yjKg_SZLEwzSOo-0XUigigQ
<img width="576" height="602" alt="image" src="https://github.com/user-attachments/assets/bde6a534-dd3b-4091-ba26-0bf696fd7ce6" /><img width="576" height="602" alt="image" src="https://github.com/user-attachments/assets/bde6a534-dd3b-4091-ba26-0bf696fd7ce6" />




