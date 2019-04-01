## Contribuir

¡Encantados! Esta página web es mantenida por voluntariado de parte de la comunidad Agile Ecuador.

## Trabajando localmente con Docker (recomendado)

Esta es la manera más recomendable para trabajar con la página web en tu máquina. 
La mayoría del trabajo está en archivos de Markdown a pesar de la página estar construída con Ruby.
No hay necesidad de saber Ruby o instalar sus dependencias para ayudar siguiendo los siguientes pasos 
de los contenedores de Docker abajo para instalar y trabajar en tu máquina.

Primero instala [Docker y Compose](https://store.docker.com/search?offering=community&type=edition). Déjalo abierto.

El siguiente paso, los comandos abajo instalará todas las dependencias necesarias de la página y arrancará
 el servidor con la página. Este paso tomará unos minutos en terminar. Las dependencias se instalarán dentro
 de un contenedor de Docker y no afecta el ámbito de desarrollo de tu máquina.

``` sh
git clone git://github.com/agileecuador/aoec.git
cd aoec
docker-compose build
docker-compose up
```

Una vez que todas las dependencias las tengas instaladas luego del primer arranque las siguientes veces 
que lo hagas será el proceso mucho más rápido.

Puedes mirar la página localmente en [http://localhost:4000/](http://localhost:4000/)

## Trabajando localmente con Ruby y Jekyll
Si no puedes usar Docker como se indicó puedes empezar de la siguiente manera para instalar las dependencias.

``` sh
git clone https://github.com/agileecuador/aoec.git
cd aoec
bundle
bundle exec jekyll serve --watch --force_polling --host 0.0.0.0
```

y visitar [http://localhost:4000/](http://localhost:4000/)

### Requerimientos

Si el comando `bundle` no se encuentra puedes instalarlo haciendo `gem install bundler`.

Si tienes fallas ejecutando el comando `bundle` puedes actualizar la versión de Ruby. Porfavor revisa la versión
 que usamos aquí que se encuentra en [.ruby_version](https://github.com/agileecuador/aoec/blob/master/.ruby_version).
 Puedes usar [RVM](https://rvm.io/) para instalar el Ruby:

``` sh
$ curl -L https://get.rvm.io | bash -s stable
$ rvm install $(cat .ruby-version)
$ rvm use $(cat .ruby-version)
```
