---
layout: post
comments: true
title:  "Instalación de ReactJs - Curso ReactJs"
date:   2016-09-05 6:01:00 +0200
categories: ReactJs
permalink: /reactjs/instalacion-reactjs
image-path: /assets/img/instalacion-reactjs-curso-react.jpg
image-alt: "instalacion de reactjs"
keywords: "curso reactjs, reactjs, react, instalacion reactjs, instalar reactjs, tutorial react"
---
En el anterior post vimos [cómo instalar Node][como-instalar-node], hoy veremos cómo instalar 
ReactJs. Hay varias formas de instalar ReactJs en nuestro proyecto pero, 
nosotros vamos a instalarlo con npm. Para ello lo que vamos hacer es 
conformar un **package.json** con todas las dependencias.

Lo primero que hacemos es crear un directorio para nuestro proyecto. 
Para el ejemplo yo crearé uno que se llama **"curso-react"**. 
Dentro de ese directorio vamos a añadir un fichero que se llama **package.
json** con el siguiente contenido:
{% highlight Bash linenos %}
{
   "name":"curso-react",
   "version":"0.1.0",
   "main":"./build/curso-react.js",
   "license":"MIT",
   "devDependencies":{
      "babel-core":"^6.1.4",
      "babel-loader":"^6.0.1",
      "babel-plugin-react-transform":"^1.1.1",
      "babel-preset-es2015":"^6.1.4",
      "babel-preset-react":"^6.1.4",
      "babel-preset-stage-0":"^6.1.4",
      "react":"^0.14",
      "react-dom":"^0.14.0",
      "webpack":"^1.9.10"
   }
}
{% endhighlight %}

Lo que hacemos con este fichero es lo siguiente:

* Con **name** le decimos el nombre de la aplicación.
* Con **version** la versión de la aplicación.
* Con **main** indicamos el fichero principal de la aplicación
* **License** indicamos la licencia de la aplicación.
* **DevDependencies** indicamos las dependencias que va a tener la aplicación pero solo en entornos de desarrollo.

Como vemos en las dependencias hemos puesto los paquetes de reactjs, babel y webpack.
Más adelante ampliaremos un poco este fichero.

Os invito a que os suscribais a la newsletter de ofimaticaeasy.es.

[como-instalar-node]: {% post_url 2016-09-05-instalacion-de-node-cursoreactjs %}