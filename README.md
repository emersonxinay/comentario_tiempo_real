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

## moviendome a la carpeta

```bash
cd nuevoproyecto
```

## configurando el Gemfile para instalar rails 7.2.0

```ruby
gem "rails", "~> 7.2.0.beta3"
```

## instalando las gemas

```bash
bundle install
```

## creando la base de datos

```bash
rails db:migrate
```

## corriendo la aplicación

```bash
rails server
```

## creando un scaffold para un post

```bash
rails generate scaffold post title:string content:text
```

## migrando el post

```bash
rails db:migrate
```

## corriendo la aplicación

```bash
rails s
```
