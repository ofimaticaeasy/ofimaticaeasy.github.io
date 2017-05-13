---
layout: post
comments: true
title:  "Hola Mundo - Curso ReactJs"
date:   2016-09-18 8:00:00 +0200
categories: ReactJs
permalink: /reactjs/hola-mundo
image-path: /assets/img/hola-mundo-curso-react.jpg
image-alt: "configuración de webpack"
keywords: "curso reactjs, reactjs, react, hola mundo, hello world"
author: "ofimaticaeasy"
image: /assets/img/hola-mundo-curso-react.jpg
date_modified: 2016-09-18 8:00:00
---
Después de varios post hablando de **React** y configurando nuestro proyecto,
hoy vamos a crear nuestro primer componente. Como no podía ser de otra
forma, vamos hacer un hola mundo. Esto que parece una tontería nos sirve
para comprobar que nuestro está bien configurado. Vamos a ello...

Primero creamos un directorio components en la raíz de nuestro proyecto.
Dentro de ese directorio vamos a crear un fichero helloWorld.jsx.
En la raíz del proyecto creamos un index.html y un app.jsx.
Hasta el momento nuestro proyecto tiene esta forma:

{% highlight Bash linenos %}
- components
   |- helloWorld.jsx
- webpack.config.js
- package.json
- index.html
- app.jsx
{% endhighlight %}

Ya tenemos todo lo necesario para empezar nuestro proyecto.
Empezamos con nuestro fichero helloWorld.jsx que va a tener el siguiente
contenido:
{% highlight javascript linenos %}
import React from 'react';

class HelloWorld extends React.Component {
  
   render() {
       return (
           <h1>Hola Mundo</h1>
       )
   }
}

export default HelloWorld;
{% endhighlight %}

Para crear un componente de **React** solo necesitamos que la clase extiende de
**React.Component** y tenga el método **render**. El método render es obligatorio
y nativo de **React**. Todas las etiquetas que escribamos dentro del método
serán las que más tarde serán pintadas en nuestra web.

Ahora pasamos a nuestro fichero **app.jsx**. Lo que vamos hacer con este fichero
es llamar a nuestro componente e incluirlo en el **DOM**.
{% highlight js linenos %}
import React from 'react';
import ReactDOM from 'react-dom';
import HelloWorld from './components/helloWorld';

ReactDOM.render(<HelloWorld />, document.getElementById('app'));
{% endhighlight %}

Lo que hacemos es utilizar el método render de la clase **ReactDOM** al cual
le pasamos dos parámetros:

* El primero es el componente, que como véis se llama como si fuese una etiqueta **HTML**.
* El segundo parámetro es el elemento de nuestro **DOM** donde se va a pintar nuestro componente, en este caso app.

Ahora ya está todo preparado para lanzar webpack y que nos transforme nuestros
ficheros jsx en un fichero js que entiendan los navegadores.
Para ello ejecutamos:
{% highlight Bash linenos %}
node_modules/.bin/webpack
{% endhighlight %}

Tardará un poco en terminar pero una vez que termine tendremos un directorio
build y dentro un fichero js.

Por último creamos nuestro fichero **index.html**
{% highlight html linenos %}
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <title>Curso ReactJs</title>
</head>
<body>
   <div id="app"></div>
   <script src="./build/curso-react.js"></script>
</body>
</html>
{% endhighlight %}

Como véis es un html muy sencillo pero, hay que tener en cuenta dos cosas:

* Hemos creado un **div** con el id **app** para qué React sepa dónde pintar.
* Hemos creado un **script** con el que incluimos el resultado de la transformación de nuestro componente.

Ya podemos abrir nuestro **index.html** con un navegador y ver si todo ha funcionado bien.