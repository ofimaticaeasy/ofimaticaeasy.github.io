---
layout: post
comments: true
title:  "Instalar php5.6 en mac 10.11 El Capitan"
date:   2016-08-29 8:00:00 +0200
categories: php
permalink: /mac/instalar-php56-ma
image-path: /assets/img/instalar-php56-en-mac.jpg
image-alt: "instalar php56 en mac"
keywords: "instalar php5.6 en mac, instalar php5.6 el capitan, instalar php5.6"
---
Ya vimos como podemos [instalar apache y php][apache-php-mac] nativamente en mac 10.11.
También vimos [como configurar los virtualhost][virtualhost-apache] en apache para tener más proyectos en nuestro apache.
Hoy vamos a ver cómo podemos instalar php5.6 y sustituir la versión anterior de php.

Para ello nos vamos a crear un info.php en algún virtualhost para después ver
que todo ha ido bien. En el post de [como instalar apache y php en mac][apache-php-mac] enseño como se hace.

EL proceso es muy sencillo, no vamos a esta web [http://php-osx.liip.ch/][php56]{:target="_blank"} y copiamos la
línea de la versión estable de php5.6 y la ejecutamos en la terminal.
{% highlight Bash linenos %}
curl -s http://php-osx.liip.ch/install.sh | bash -s 5.6
{% endhighlight %}

Este comando hará todo el trabajo por nosotros. Cuando termine solo tenemos
que reiniciar apache:
{% highlight Bash linenos %}
$ sudo apachectl restart
{% endhighlight %}

Miramos nuestro info.php y ya debería poner php5.6.

Solo quedaría configurar una cosa. Si ejecutamos en la consola:
{% highlight Bash linenos %}
$ php -v
{% endhighlight %}

Nos seguirá dando la versión antigua, para solucionar esto nos vamos al directorio /usr/local
y verificamos como se llama el directorio donde se ha creado los ficheros de php5.6.
En mi caso es:
{% highlight Bash linenos %}
/usr/local/php5-5.6.23-20160626-132038
{% endhighlight %}

Ahora que sabemos el nombre solo tenemos que abrir nuestro fichero profile del home:
{% highlight Bash linenos %}
$ vi ~/.bash_profile
{% endhighlight %}

Y añadimos la siguiente línea (Modificando el nombre de vuestro directorio)
{% highlight Bash linenos %}
export PATH=/usr/local/php5-5.6.23-20160626-132038/bin:$PATH
{% endhighlight %}

Guardamos y reiniciamos nuestro perfil ejecutando:
{% highlight Bash linenos %}
$ source ~/.bash_profile
{% endhighlight %}

Ahora si volvemos a ejecutar:
{% highlight Bash linenos %}
$ php -v
{% endhighlight %}

Ya debe salir la versión nueva de php.

No te olvides suscribirte a nuestra newsletter si no te quieres perder post como este.

[apache-php-mac]: {% post_url 2016-08-28-apache-y-php-en-mac %}
[virtualhost-apache]: {% post_url 2016-08-28-configurar-virtualhost-en-apache-mac %}
[php56]: http://php-osx.liip.ch/