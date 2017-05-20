---
layout: post
title:  "Como hacer debug en Safari de iOS"
description: No te olvides hacer debuging en tus dispositivos iOS de tus aplicaciones web. Hoy veremos como hacer debug en Safari de iOS.
type: article
date:   2016-08-21 10:00:00 +0200
categories: debug safari ios
permalink: /debug/como-hacer-debug-safari-ios
image-path: /assets/img/debugear-safari-ios.jpg
image-alt: "Como hacer debug en iOS"
keywords: "debug ios, debug, como hacer debug safari ios, como hacer debug en ios, debugear safari ios"
date_modified: 2017-05-20 12:00:00
---
Cada vez los navegadores nos ayudan más a simular navegadores de móviles, 
pero siempre da más confianza **debugear** directamente en el móvil o tablet. 
De esta forma nos ahorramos disgustos que no habíamos previsto o que 
nuestro navegador de escritorio interpreta distinto que nuestro navegador de móvil.

Hoy vemos cómo hacer eso en **iOS**. Esto funciona tanto para el **iPhone** como para el **iPad**.

Lo primero que hacemos es conectar el dispositivo al ordenador y si nos 
sale en el dispositivo la siguiente alerta le damos a **confiar**

<div class="text-center" markdown="1">
![Confiar en este ordenador]({{ site.baseurl }}/assets/img/confiar-en-este-ordenador.jpg "Confiar en este ordenador"){:class="img-vertical"}
</div>

Después nos metemos en **ajustes** del dispositivo y vamos a **Safari -> Avanzado**

<div class="text-center" markdown="1">
![Opciones avanzadas]({{ site.baseurl }}/assets/img/opciones-avanzadas.jpg "Opciones avanzadas"){:class="img-vertical"}
</div>

Una vez en esa pantalla, activamos **inspector web**

<div class="text-center" markdown="1">
![Inspector web]({{ site.baseurl }}/assets/img/inspector-web.jpg "Inspector web"){:class="img-vertical"}
</div>

Ahora abrimos Safari en el dispositivo y vamos a la **url** que queremos debugear. 
Dejamos Safari en nuestro dispositivo abierto y abrimos Safari en el ordenado. 
Vamos a la pestalla de **Desarrollo** y nos tiene que salir nuestro dispositivo, 
si no ves el menú **Desarrollo** puedes lee el post de [como activar las herramientas de desarrollo en Safari][activar-herramientas-desarrollo-safari],
 
<div class="text-center" markdown="1">
![Inspector web]({{ site.baseurl }}/assets/img/inspector-web-iphone.png "Inspector web"){:class="img-horizontal"}
</div>

Con eso ya tendríamos el inspector web  del dispositivo en nuestro ordenador.

[activar-herramientas-desarrollo-safari]: {% post_url 2016-08-20-como-activar-herramientas-de-desarrollo-en-safari %}