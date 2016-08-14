---
layout: post
title:  "Variables en less"
date:   2016-08-15 10:00:00 +0200
categories: css less pre-procesadores
permalink: /css/variables-less
image-path: /assets/img/variables-less.jpg
image-alt: "variables less"
keywords: "less,css,pre-procesador css,procesador css, variables less"
---
En este post vamos a empezar a ver la potencia de **less**. 
Hay muchas veces que en nuestras hojas de estilo repetimos colores, 
tamaño de fuente, tipo de fuente, etc. Repetir tantos valores a lo largo 
de nuestros estilos que perdemos mucho tiempo cuando queremos cambiar un valor de ellos. 
Aquí es donde entra la potencia de **less**.

Si no te has leído el post de [cómo instalar less][instalar-less], te invito a leerlo y 
suscribirte a nuestra newsletter para que no te pierdas ningún post.

Las variables de **less** se definen con una **@**.
{% highlight css linenos %}
@nice-blue: #5B83AD;
{% endhighlight %}

Una vez definida la variable podemos hacer uso de ella:
{% highlight css linenos %}
#header {
  color: @nice-blue;
}
{% endhighlight %}

Una vez que pre-compilemos nuestro fichero, la salida quedaría así:
{% highlight css linenos %}
#header {
  color: #5B83AD;
}
{% endhighlight %}

En el anterior ejemplo declaramos una variable con un color pero podríamos hacer cosas más complejas o definir variables para otro tipo de valores.
{% highlight css linenos %}
@nice-blue: #5B83AD;
@light-blue: @nice-blue + #111;
@arial-family: Arial;

* {
   font-family: @arial-family;
}

#header {
  color: @light-blue;
}
{% endhighlight %}

Y la salida de nuestro **less** quedaría:
{% highlight css linenos %}
* {
font-family: Arial;
}

header {
  color: #6c94be;
}
{% endhighlight %}

Como hemos visto **less** nos ayuda a la hora de modificar un valor que 
se repite varias veces por nuestras hojas de estilo.

[instalar-less]: {% post_url 2016-08-04-instalacion-less %}