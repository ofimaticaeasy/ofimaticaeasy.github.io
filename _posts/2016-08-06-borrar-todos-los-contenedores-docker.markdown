---
layout: post
title:  "Borrar contenedores en Docker"
description: Aprende a eliminar contenedores de docker que ya no utilices para que no tengas el equipo llego de contenederos inicesarios.
type: article
date:   2016-08-06 17:10:00 +0200
categories: docker
permalink: /docker/borrar-todos-contenedores
image-path: /assets/img/eliminar-contenedores-docker.jpg
image-alt: "borrar contenedores docker"
keywords: "docker,container docker,contenedores docker"
date_modified: 2017-05-20 12:00:00
---
En algunas ocasiones nos olvidamos de los contenedores que tenemos creados y cuando nos damos cuenta tenemos 30.
Ya vimos [como borrar todas las imagenes en docker][borrar-imagenes], 
hoy veremos como borrar todos los contenedores en un solo comando.

> Recordar parar todos los contenedores antes de borrarlos.

Para borrarlos todos y dejar nuestra máquina limpia simplemente ejecutamos el siguiente comando:

{% highlight Bash linenos %}
$ docker rm $(docker ps -a -q)
{% endhighlight %}

Y ya podremos listar todos los contenedores y ver que esta limpio:

{% highlight Bash linenos %}
$ docker ps -a
{% endhighlight %}

[borrar-imagenes]: {% post_url 2016-08-06-borrar-todas-las-imagenes-docker %}
