# Rails 7.2.0 beta

## versiones de ruby y rails

```text
ruby 3.3.1
rails 7.2.0
```

## creando el proyecto

```bash
rails new nuevoproyecto
```

### moviendome a la carpeta

```bash
cd nuevoproyecto
```

### configurando el Gemfile para instalar rails 7.2.0

```ruby
gem "rails", "~> 7.2.0.beta3"
```

### instalando las gemas

```bash
bundle install
```

### creando la base de datos

```bash
rails db:migrate
```

### corriendo la aplicación

```bash
rails server
```

### creando un scaffold para un post

```bash
rails generate scaffold post title:string content:text
```

### migrando el post

```bash
rails db:migrate
```

### corriendo la aplicación

```bash
rails s
```

## Insertando un editor de texto en rails

```bash
rails action_text:install
```

migramos para que todo se instale correctamente

```bash
bundle install
```

### migramos nuevamente

```bash
rails db:migrate
```

### para conectar correctamente el editor de texto en post

```ruby
# app/models/post
has_rich_text :content
```

## Para manejar el tiempo real local desde la terminal

```bash
./bin/importmap pin local-time
```

luego en importmap.rb

```ruby
# agregar
pin "local-time" # @3.0.2
"https://ga.jspm.io/npm:local-time@3.0.2/app/assets/javascripts/local-time.es2017-esm.js"
# @3.0.2
```

y seguido en aplication.js para usar el tiempo

```js
// agregar
import LocalTime from "local-time"
LocalTime.start()
```

descargando time desde la terminal

```bash
./bin/importmap pin local-time --download
```

crear recursos para los comentarios

```bash
rails g resources comment post:references content:text
```

migrar una vez creado

```bash
rails db:migrate
```

## enviar email con mailer

```bash
rails g mailer comments submitted
```

## para usar en tiempo real

```erb
# en posts/show.html.erb
<%= turbo_stream_from @post  %>

# models/comment.rb
  broadcasts_to :post

```

# deploy a heroku

cambiar a la base de datos de postgresql y antes deberia tener commitiado con git todo el proyecto

```bash
rails db:system:change --to=postgresql
```

creando la cuenta de heroku si no lo tienes

```bash
heroku login
```

creando el proyecto en heroku desde la terminal

```bash
heroku create
```

subir a heroku

```bash
heroku push main
```
