---
layout: post
title:  "10 NOVEDADES EN PHP 7"
date:   2016-07-30 17:00:00 +0200
categories: programación php tutorial
permalink: /php/novedades-php7
image-path: /assets/img/10-novedades-de-php7-compressor.jpg
image-alt: "test"
keywords: "php7,php 7,php,novedades,programacion"
excerpt_separator: <!--more-->
---
En este primer post del blog, vamos a ver algunas de las novedades del tan esperado php 7.

## **1. Declaración de tipos**

Ya por fin podemos declarar los tipos básicos en las funciones.

{% highlight php startinline=True linenos %}
<?php
function foo(bool $baz) {
    return 'hello';
}

function foo(float $baz) {
    return 'hello';
}

function foo(int $baz) {
    return 'hello';
}

function foo(string $baz) {
    return 'hello';
}
{% endhighlight %}

<!--more-->

Esto es un test 6

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}


{% highlight php startinline=true %}
<?php
echo 'hola';

class demo{
    function __contructor()
    {
        echo "hola";
    }
}
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
