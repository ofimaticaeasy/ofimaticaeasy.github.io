---
layout: post
comments: true
title:  "Instalación de less"
date:   2016-08-04 8:00:00 +0200
categories: css less pre-procesadores
permalink: /css/instalacion-less
image-path: /assets/img/instalacion-less.jpg
image-alt: "instalacion-less"
keywords: "less,css,pre-procesador css,procesador css, instalar less, instalacion less"
---
Hoy empezamos con unos de los pre-procesadores de css. 
**Less** añade funcionalidades como variables, mixins, funciones y una serie de técnicas que permiten tener unas hojas de estilo más mantenibles y más escalables.
Todo esto lo iremos viendo en diferentes post, pero hoy empezaremos con la instalación del pre-procesador de less.

## Instalación

La instalación la vamos a llevar acabo con **npm** y para ello necesitamos tener instalado **node**. Para la instalación de **node** en **Ubuntu** ejecutamos lo siguiente:

{% highlight Bash linenos %}
# curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
# sudo apt-get install -y nodejs
# sudo apt-get install -y build-essential
{% endhighlight %}

Una vez que ya tenemos **node** y **npm** podemos empezar con nuestro proyecto. 

Como vamos a instalar **less** con la ayuda de **npm** es aconsejable crear un fichero de configuración de **npm**. Para ello ejecutamos el siguiente comando:

{% highlight Bash linenos %}
$ npm init
{% endhighlight %}

Nos irá preguntando el nombre del proyecto, la versión, el autor, etc... Podemos dejarlo por defecto y después completarlo. El fichero queda asi:

{% highlight javascript linenos %}
{
    "name": "node.ofimaticaeasy.es",
    "version": "1.0.0",
    "description": "",
    "main": "index.js",
    "scripts": {
        "test": "echo \"Error: no test specified\" && exit 1"
    },
    "author": "",
    "license": "ISC"
}
{% endhighlight %}

Ahora ya podemos instalar **less** ejecutando lo siguiente:

{% highlight Bash linenos %}
$ npm install less --save-dev
{% endhighlight %}

Este comando nos creará un directorio **node_modules** donde estará **less**.
Para probar si todo funciona bien vamos a crear un directorio **_less** donde van a estar todos nuestros less.
Dentro del directorio **_less** vamos a crear un fichero **main.less** con el siguiente ejemplo:

{% highlight css linenos %}
@nice-blue: #5B83AD;
@light-blue: @nice-blue + #111;

#header {
  color: @light-blue;
}
{% endhighlight %}

Ahora probamos si el pre-compilador funciona ejecutando el siguiente comando desde la **raiz del proyecto**

{% highlight Bash linenos %}
$ node_modules/.bin/lessc _less/main.less styles.css
{% endhighlight %}

Esto debería crear el fichero styles.css con el siguiente contenido:

{% highlight css linenos %}
#header {
  color: #6c94be;
}
{% endhighlight %}

En los siguientes post veremos como sacarle el mayor partido a less.
