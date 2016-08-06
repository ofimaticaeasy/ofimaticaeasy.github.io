---
layout: post
title:  "Borrar todas las imagenes en Docker"
date:   2016-08-06 17:00:00 +0200
categories: docker
permalink: /docker/borrar-todas-imagenes
image-path: /assets/img/eliminar-imagenes-docker.jpg
image-alt: "borrar imagen docker"
keywords: "docker,images docker,imagenes docker"
---
Uno de los problemas cuando trabajamos con **Docker** es la cantidad de imagenes que creamos y sobre todo cuando empezamos a trabajar con el.
Borrar imagen a imagen aveces es un trabajo un poco duro y que nos puede llevar un tiempo, por eso os voy a enseñar este comando maravilloso.

> Recordar que para poder borrar todas las imagenes sin ningún problema no debemos tener ningún contenedor asociado a esa imagen.

Puedes echarle un vista a [como borrar todos los contenedores][borrar-contenedores]

Para borrar todas las imagenes de **Docker** a la vez ejecutamos:

{% highlight Bash linenos %}
$ docker rmi $(docker images -q)
{% endhighlight %}

Con ese comando ya tendremos todas las imagenes borradas.

[borrar-contenedores]: {% post_url 2016-08-06-borrar-todos-los-contenedores-docker %}