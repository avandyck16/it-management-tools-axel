# IT MGMT TOOLS

> ## Nota histórica
>
> Este proyecto fue desarrollado aproximadamente entre 2011 y 2012, varios años antes de mi transición profesional hacia QA Engineering y Automatización.
>
> Fue creado como una herramienta personal para agilizar tareas de mantenimiento, diagnóstico y soporte técnico en equipos Windows. Durante años lo utilicé para dar servicio a computadoras de familiares, amigos y clientes, y posteriormente continuó siendo una herramienta útil durante mi experiencia profesional en soporte técnico.
>
> Aunque hoy representa una etapa temprana de aprendizaje, conservo este proyecto como evidencia de mis primeros acercamientos a la automatización, la resolución de problemas y la optimización de procesos mediante scripting.
>
> Aunque el proyecto fue creado hace más de una década, varias de sus funciones continúan siendo útiles actualmente y algunas de ellas siguen formando parte de mi flujo de trabajo para tareas de diagnóstico y mantenimiento en entornos Windows.

---

## Descripción

IT MGMT TOOLS es una colección de utilidades administrativas para Windows desarrollada en Batch (.bat), diseñada para centralizar tareas comunes de mantenimiento, diagnóstico, recuperación y configuración del sistema operativo en una única interfaz basada en menús.

El objetivo principal era reducir el tiempo necesario para ejecutar tareas repetitivas de soporte técnico, evitando recordar o escribir manualmente múltiples comandos durante procesos de mantenimiento y solución de problemas.

---

## Funcionalidades

### Redes y conectividad

* Liberación y renovación de direcciones IP.
* Limpieza de caché DNS.
* Reinicio de configuración TCP/IP.
* Visualización de configuración de red.
* Monitoreo de conexiones activas.
* Herramientas de diagnóstico de conectividad.

### Administración del sistema

* Información general del equipo.
* Información de hardware.
* Gestión de usuarios locales.
* Activación y desactivación de la cuenta Administrador.
* Administración de servicios de Windows.
* Configuración de Firewall.

### Mantenimiento y reparación

* CHKDSK.
* SFC.
* DISM.
* Desfragmentación de discos.
* Restauración del sistema.
* Limpieza y tareas de mantenimiento.

### Herramientas integradas

* Acceso rápido a utilidades nativas de Windows.
* Lanzadores de herramientas administrativas.
* Menús interactivos para navegación simplificada.

### Extras

* Contenido ASCII y easter eggs.
* Recreación del clásico Star Wars ASCII encontrado originalmente en comunidades técnicas de la época.

---

## Contexto del Proyecto

Cuando este proyecto fue desarrollado, mi objetivo principal era aprender cómo funcionaban Windows y la automatización mediante scripting.

La mayoría del código fue escrito por mí a partir de experimentación propia, documentación disponible en línea y consultas en foros técnicos. Esto ocurrió años antes de la existencia de herramientas modernas de inteligencia artificial, por lo que el aprendizaje se basó principalmente en investigación, prueba y error, y experiencia práctica trabajando con equipos reales.

---

## Lo que aprendí

Este proyecto me permitió desarrollar habilidades que continúan siendo relevantes actualmente:

* Automatización de tareas repetitivas.
* Organización de flujos mediante menús y navegación lógica.
* Uso de herramientas administrativas de Windows.
* Diagnóstico de problemas de red y sistema operativo.
* Resolución de problemas mediante scripting.
* Diseño de herramientas enfocadas en productividad y eficiencia.

---

## Lo que sigue funcionando

Gran parte de las utilidades principales continúan siendo válidas actualmente debido a que utilizan herramientas nativas de Windows como:

* ipconfig
* netsh
* sfc
* dism
* chkdsk
* servicios del sistema
* herramientas administrativas integradas

De hecho, algunas de estas funciones siguen siendo utilizadas ocasionalmente en mi trabajo actual cuando necesito diagnosticar problemas de conectividad, restablecer configuraciones de red o realizar tareas rápidas de mantenimiento relacionadas con almacenamiento y sistema operativo.

Aunque varias herramientas modernas ofrecen alternativas más avanzadas, este proyecto sigue siendo una referencia práctica de utilidades que han demostrado ser útiles durante años.

---

## Qué haría diferente hoy

Si desarrollara nuevamente esta herramienta, probablemente:

* Utilizaría PowerShell en lugar de Batch.
* Separaría funcionalidades en módulos reutilizables.
* Implementaría manejo de errores más robusto.
* Agregaría registros (logs) de ejecución.
* Incorporaría validaciones automáticas y reportes.
* Utilizaría control de versiones desde el inicio.
* Diseñaría una interfaz gráfica o una arquitectura más mantenible.

Sin embargo, conservaría la misma idea central: automatizar tareas repetitivas para ahorrar tiempo y reducir errores.

---

## Nota sobre esta versión pública

Algunas funcionalidades relacionadas con activación de software fueron retiradas de la versión pública del repositorio para mantener el enfoque del proyecto en herramientas de administración, diagnóstico y mantenimiento de sistemas Windows.

La intención de este repositorio es preservar el valor histórico, educativo y técnico del proyecto, destacando su enfoque en automatización y soporte técnico.

---

## Reflexión Personal

Mirando este proyecto años después, me resulta especialmente significativo porque representa uno de mis primeros intentos de crear soluciones técnicas reales sin contar con formación formal en programación.

Más allá del código, este proyecto refleja curiosidad técnica, aprendizaje autodidacta y un interés temprano por la automatización que eventualmente evolucionó hacia mi carrera profesional en Quality Assurance y Test Automation.

Algunas de las utilidades incluidas en este proyecto continúan siendo útiles más de una década después de su creación y ocasionalmente siguen formando parte de mi flujo de trabajo para tareas de diagnóstico y mantenimiento en Windows.
