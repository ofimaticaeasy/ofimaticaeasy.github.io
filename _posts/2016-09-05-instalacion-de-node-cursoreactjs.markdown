---
layout: post
comments: true
title: "Instalación de Node js"
description: Node es una herramienta creada en Javascript. Aprende como instalar nodejs de una forma muy básica.
type: article
date: 2016-09-05 6:00:00 +0200
categories: ReactJs
permalink: /reactjs/instalacion-node
image-path: /assets/img/instalacion-nodejs-curso-react.jpg
image-alt: "instalacion de node"
keywords: "curso reactjs, reactjs, react, instalacion node, instalar node, tutorial react"
date_modified: 2017-05-20 12:00:00
---
Hoy empezamos un nuevo curso, en esta ocasión ReactJs. Para el curso vamos 
a utilizar Node para que npm nos ayude con las dependencias. En este primer 
capítulo veremos cómo instalar Node.

La instalación de Node es relativamente sencilla. Actualmente la versión 
LTS es la 4.5.0 y es la que vamos a utilizar.
Para los usuarios de MacOs la instalación usando bash es la siguiente:
{% highlight Bash linenos %}
curl "https://nodejs.org/dist/latest/node-${VERSION:-$(wget -qO- https://nodejs.org/dist/latest/ | sed -nE 's|.*>node-(.*)\.pkg</a>.*|\1|p')}.pkg" > "$HOME/Downloads/node-latest.pkg" && sudo installer -store -pkg "$HOME/Downloads/node-latest.pkg" -target "/"
{% endhighlight %}

Si preferís usar homebrew:
{% highlight Bash linenos %}
brew install node
{% endhighlight %}

Para los usuarios con distribuciones Linux basadas en Debían tienen que ejecutar lo siguiente:
{% highlight Bash linenos %}
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
{% endhighlight %}

Para los usuarios de Windows simplemente bajaros el instalador desde aquí [https://nodejs.org/en/#download][instalador-windows]{:target="_blank"}

Si tienes otro sistema operativo simplemente échale un vistazo a la web oficial [https://nodejs.org/en/download/package-manager/][otros-instaladores]{:target="_blank"}

Una vez que lo hemos instalado simplemente ejecutamos:
{% highlight Bash linenos %}
node -v
{% endhighlight %}

Si todo fue bien, nos debería mostrar la versión que tenemos.

En el siguiente post prepararemos el fichero package.json con las dependencias.

[instalador-windows]: https://nodejs.org/en/#download
[otros-instaladores]: https://nodejs.org/en/download/package-manager/