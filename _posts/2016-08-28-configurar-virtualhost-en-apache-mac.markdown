---
layout: post
comments: true
title:  "VirtualHost en apache de mac"
date:   2016-08-28 8:00:00 +0200
categories: apache
permalink: /mac/virtualhost-apache-mac
image-path: /assets/img/crear-virtualhost-en-apache.jpg
image-alt: "vitualhost apache mac"
keywords: "crear virtualhost en apache mac, crear virtualhost apache, virtualhost mac"
---
En el post anterior vimos [como configurar apache y php en mac][apache-php-mac]. Hoy vamos a
ver como poder configurar virtualhost en nuestro apache para extender su funcionalidad.
Los virtualhost nos permiten tener varios proyectos diferentes con la posibilidad de
tener varias urls.

Para ello lo primero que hacemos es abrir el fichero de configuración de apache
con nuestro editor favorito, en mi caso vi. Recuerda que tiene que abrirlo como
administrador:
{% highlight Bash linenos %}
$ sudo vi /etc/apache2/httpd.conf
{% endhighlight %}

Buscamos la siguiente línea y la descomentamos quitandole la #:
{% highlight Bash linenos %}
$ #Include /private/etc/apache2/extra/httpd-vhosts.conf
{% endhighlight %}

Ahora vamos a crear un virtualhost de prueba. Para ello abrimos el fichero
{% highlight Bash linenos %}
$ sudo vi /private/etc/apache2/extra/httpd-vhosts.conf
{% endhighlight %}

Borramos todo el contenido del fichero y escribimos lo siguiente:
{% highlight Bash linenos %}
<VirtualHost *:80>
   ServerAdmin test@example.com
   DocumentRoot "/var/www/test"
   ServerName test.example.com
   ErrorLog "/private/var/log/apache2/test.example.com-error_log"
   CustomLog "/private/var/log/apache2/test.example.com-access_log" common
</VirtualHost>
{% endhighlight %}

Ahora creamos un directorio dentro de /var/www que se llame test.
{% highlight Bash linenos %}
$ mkdir /var/www/test
{% endhighlight %}

Y creamos un fichero index.php dentro de test con el siguiente contenido:
{% highlight Bash linenos %}
<h1>Hola soy el virtualHost test.example.com</h1>
{% endhighlight %}

Ahora tenemos que añadir nuestro nuevo dominio a nuestro fichero hosts.
Abrimos el siguiente fichero:
{% highlight Bash linenos %}
$ sudo vi /etc/hosts
{% endhighlight %}

Y escribimos la siguiente línea:
{% highlight Bash linenos %}
127.0.0.1       test.example.com
{% endhighlight %}

Reiniciamos apache:
{% highlight Bash linenos %}
$ sudo apachectl restart
{% endhighlight %}

Ahora ya podemos acceder a test.example.com desde un navegador. Si todo ha ido
bien debemos ver el mensaje.
Ahora ya podemos crear todos los virtualHost que queramos.

[apache-php-mac]: {% post_url 2016-08-28-apache-y-php-en-mac %}