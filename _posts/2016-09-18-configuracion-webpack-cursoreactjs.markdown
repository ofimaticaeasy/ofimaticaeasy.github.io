---
layout: post
comments: true
title:  "Configuración de webpack"
description: Aprende a configurar Webpack para nuestros proyectos de react js. Webpack es una de las herramientas más potentes en front end.
type: article
date:   2016-09-18 8:00:00 +0200
categories: ReactJs
permalink: /reactjs/configuracion-webpack
image-path: /assets/img/configurar-webpack-curso-react.jpg
image-alt: "configuracion de webpack"
keywords: "curso reactjs, reactjs, react, configurar webpack, configuracion webpack, webpack"
date_modified: 2017-05-20 12:00:00
---
En los anteriores post del curso vimos [cómo instalar node][como-instalar-node] y [cómo instalar 
reactjs][como-instalar-reactjs]. Antes de escribir nuestro primer hola mundo en reactjs, nos hace 
falta configurar webpack para que nos ayude con nuestro programa.

Para ello vamos a crear el la raíz del proyecto un fichero que se llame 
**webpack.config.js**. En el vamos a pegar el siguiente código:

{% highlight js linenos %}
var pkg = require('./package.json');

module.exports = {
    resolve: {
        extensions: ['', '.jsx', '.js']
    },

    entry: './app.jsx',

    output: {
        path: './build',
        filename: pkg.name + '.js'
    },

    module: {
        loaders: [{
            test: /(\.js|\.jsx)$/,
            loader: 'babel',
            query: {
                presets: ['es2015', 'stage-0', 'react']
            }
        }]
    }
};
{% endhighlight %}

Lo que le decimos a webpack con la siguiente configuración es lo siguiente:

* Con extensions le indicamos que solo tenga en cuenta ficheros js y jsx.
* Con entry le indicamos el fichero inicio de nuestra app.
* Con output le indicamos cuál es el directorio donde va a dejar los ficheros después de compilarlos y el nombre del fichero. En este caso el fichero se va a llamar con el nombre que hayamos puesto en el atributo name del fichero pakage.js.
* Con loaders lo que le indicamos a webpack es que transpile los fichero es2015 y los ficheros jsx. Estos fichero los traducirá a js que entiendan todos los navegadores.

Por ahora nuestro proyecto está vacío y nos dará un error pero, para arrancar 
webpack ejecutamos los siguiente:
{% highlight Bash linenos %}
node_modules/.bin/webpack
{% endhighlight %}

Con esto ya tendríamos una configuración inicial de webpack. Más a delante iremos mejorando la configuración.

Os invito a que os suscribais a la newsletter para no perderos nada de ofimaticaeasy.es.

[como-instalar-node]: {% post_url 2016-09-05-instalacion-de-node-cursoreactjs %}
[como-instalar-reactjs]: {% post_url 2016-09-05-instalacion-de-node-cursoreactjs %}