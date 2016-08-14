---
layout: post
title:  "Como hacer debug en iOS"
date:   2016-08-06 17:10:00 +0200
categories: debug
permalink: /debug/como-hacer-debug-ios
image-path: /assets/img/como-hacer-debug-ios.jpg
image-alt: "Como hacer debug en iOS"
keywords: "debug ios, debug, como hacer debug safari ios, como hacer debug en ios, debugear ios"
---
Cada vez los navegadores nos ayudan más a simular navegadores de móviles, 
pero siempre da más confianza **debugear** directamente en el móvil o tablet. 
De esta forma nos ahorramos disgustos que no habíamos previsto o que 
nuestro navegador de escritorio interpreta distinto que nuestro navegador de móvil.

Hoy vemos cómo hacer eso en **iOS**. Esto funciona tanto para el **iPhone** como para el **iPad**.

Lo primero que hacemos es conectar el dispositivo al ordenador y si nos 
sale en el dispositivo la siguiente alerta le damos a **confiar**

![Confiar en este ordenador]({{ site.baseurl }}/assets/img/confiar-en-este-ordenador.jpg "Confiar en este ordenador")

Después nos metemos en **ajustes** del dispositivo y vamos a **Safari -> Avanzado**

![Opciones avanzadas]({{ site.baseurl }}/assets/img/opciones-avanzadas.jpg "Opciones avanzadas")

Una vez en esa pantalla, activamos **inspector web**

![Inspector web]({{ site.baseurl }}/assets/img/inspector-web.jpg "Inspector web")

Ahora Safari en el dispositivo y vamos a la **url** que queremos debugear. Dejamos Safari abierto y abrimos Safari en el ordenado. Vamos a herramientas, si no ves este menú lee este post, 

Con eso ya tendríamos el inspector web  del dispositivo en nuestro ordenador.