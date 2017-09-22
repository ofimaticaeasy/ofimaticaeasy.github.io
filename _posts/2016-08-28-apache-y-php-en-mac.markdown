---
layout: post
comments: true
title:  "Instalar apache y php en mac 10.11 El Capitan"
description: Aprende a intalar apache y php en mac. De una forma muy facil tendremos apache y php en nuestro mac de forma nativa.
type: article
date:   2016-08-28 8:00:00 +0200
categories: apache php
permalink: /mac/instalar-apache-php-mac
image-path: /assets/img/apache-y-php-en-mac.jpg
image-alt: "instalar apache y php en mac"
keywords: "instalar apache en mac, instalar php en mac, apache en el capitan, php en el capitan, instalacion apache en el capitan, instalacion php en el capitan, apache php nativo mac"
date_modified: 2017-05-20 12:00:00
---
En los equipo de la compañía Apple por defecto viene instalado apache y php,
no se muy bien el motivo, pero ya viene de fábrica instalado. Llevo mucho tiempo
trabajando con servidores web locales como mampp o xampp hasta que descubrí que cuando
trabajaba con el mac no me hacía falta porque viene nativo.

Para poder trabajar bien con apache y php en mac hay que hacer algunas configuraciones.
Lo primero vamos a comprobar si efectivamente tenemos apache instalado:
{% highlight Bash linenos %}
$ sudo apachectl start
{% endhighlight %}

Ahora accedemos desde un navegador a https://localhost y nos tiene que poner It works!

Vamos a verificar la versión de php que tiene instalado nuestro mac ejecutando los siguiente:
{% highlight Bash linenos %}
$ php -v
{% endhighlight %}

En mi caso tengo
{% highlight Bash linenos %}
PHP 5.5.36 (cli) (built: May 29 2016 01:07:06)
Copyright (c) 1997-2015 The PHP Group
Zend Engine v2.5.0, Copyright (c) 1998-2015 Zend Technologies
{% endhighlight %}

Si todo ha ido bien ya estamos listos para empezar a configurar apache

## Configuración de apache

Vamos abrir el siguiente fichero con vuestro editor preferido. Recordar que los tenéis que abrir
como administrador. Yo para el ejemplo voy a utilizar vi.
{% highlight Bash linenos %}
$ sudo vi /etc/apache2/httpd.conf
{% endhighlight %}

A mi lo primero que me gusta hacer es cambiar el directorio raíz de apache a /var/www.
Para ello nos vamos a la línea que hay esto:
{% highlight Bash linenos %}
DocumentRoot "/Library/WebServer/Documents"
<Directory "/Library/WebServer/Documents">
{% endhighlight %}

Y sustituimos esas dos líneas por esto:
{% highlight Bash linenos %}
DocumentRoot "/var/www"
<Directory "/var/www">
{% endhighlight %}

Vamos a crear el directorio que acabamos de crear:
{% highlight Bash linenos %}
$ sudo mkdir /var/www
{% endhighlight %}

Vamos a darle permisos totales a ese directorio para que no tengáis problemas:
{% highlight Bash linenos %}
$ sudo chmod 777 /var/www
{% endhighlight %}

Vamos a generar un fichero index.html dentro de www para verificar que la
configuración funciona con el siguiente contenido:
{% highlight Bash linenos %}
<h1>hola que tal</h1>
{% endhighlight %}

Antes de ir al navegador y poner https://localhost hay que reiniciar el servidor con:
{% highlight Bash linenos %}
$ sudo apachectl restart
{% endhighlight %}

Ahora accedemos a https://localhost y debería salir nuestro mensaje.

## Configuración de php

Para configurar php lo que tenemos que haces es volver a editar el fichero
de configuración de apache:
{% highlight Bash linenos %}
$ sudo vi /etc/apache2/httpd.conf
{% endhighlight %}

Buscamos la linea que pone:
{% highlight Bash linenos %}
#LoadModule php5_module libexec/apache2/libphp5.so
{% endhighlight %}

Y le borramos la #
{% highlight Bash linenos %}
LoadModule php5_module libexec/apache2/libphp5.so
{% endhighlight %}

Volvemos a reiniciar apache:
{% highlight Bash linenos %}
$ sudo apachectl restart
{% endhighlight %}

Ahora vamos a crear el fichero info.php dentro del directorio /var/www con el
siguiente contenido:
{% highlight Bash linenos %}
<?php
phpinfo();
?>
{% endhighlight %}

Ahora accedemos a https://localhost/info.php y tendrás que ver toda la configuración
de php.

Con eso estaría todo. Si ahora lo que quieres es configurar un virtualHost para
cada proyecto, puedes leer el [este post][virtualhost-apache].

[virtualhost-apache]: {% post_url 2016-08-28-configurar-virtualhost-en-apache-mac %}