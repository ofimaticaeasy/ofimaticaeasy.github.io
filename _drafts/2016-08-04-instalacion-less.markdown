---
layout: post
title:  "Instalación de less"
date:   2016-08-04 8:00:00 +0200
categories: css less pre-procesadores
permalink: /css/instalacion-less
image-path: /assets/img/instalacion-less.jpg
image-alt: "instalacion-less"
keywords: "less,css,pre-procesador css, procesador css"
---
Hoy empezamos con unos de los pre-procesadores de css. 
Less añade funcionalidades como variables, mixins, funciones y una serie de técnicas que permiten tener unas hojas de estilo más mantenibles y más escalables.
Todo esto lo iremos viendo en diferentes post, pero hoy empezaremos con la instalación del pre-procesador de less.

## Instalación

La instalación la vamos a llevar acabo con *npm* y para ello necesitamos tener instalado node. Para la instalación de node en Ubuntu ejecutamos lo siguiente:

{% highlight Bash linenos %}
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
{% endhighlight %}

Una vez que ya tenemos node y npm podemos empezar con nuestro proyecto. Vamos a crear una estructura básica de directorios
