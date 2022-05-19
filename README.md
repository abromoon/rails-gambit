# Рельсовый Гамбит (Rails Gambit)

<div align="center">

[![pipeline status](https://gitlab.com/r4060/rails-gambit/badges/main/pipeline.svg)](https://gitlab.com/r4060/rails-gambit/)
[![coverage report](https://gitlab.com/r4060/rails-gambit/badges/main/coverage.svg)](https://gitlab.com/r4060/rails-gambit/)
[![license](https://badgen.net/gitlab/license/r4060/rails-gambit?color=98c510)](https://gitlab.com/r4060/rails-gambit/blob/main/LICENSE)
[![open-issues](https://badgen.net/gitlab/open-issues/r4060/rails-gambit?icon=gitlab)](https://gitlab.com/r4060/rails-gambit/-/issues)
[![contributors](https://badgen.net/gitlab/contributors/r4060/rails-gambit?icon=user)](https://gitlab.com/r4060/rails-gambit/)
 
[![telegram](https://img.shields.io/static/v1?label=telegram&message=news&color=blue&logo=telegram)](https://t.me/railsgambit)
[![wiki](https://img.shields.io/static/v1?label=wiki&message=docs&color=white&logo=wikipedia)](https://gitlab.com/r4060/rails-gambit/-/wikis/home)

</div>

`Rails Gambit` - это образовательный проект по реализации онлайн платформы для совместной игры в шахматы и не только. Он создан с целью изучения `Ruby on Rails` студентами. Упор делается на применение передовых подходов в современной web-разработке, погружение в процесс "на всю глубину" включая обслуживание серверов, доставку продуктового кода и популяризацию [шахмат](https://ru.wikipedia.org/wiki/Шахматы).

## Планы, возможности, фичи (features)

- [ ] Пользователи / авторизация / профиль
- [ ] Сетевая игра в двоём
- [ ] Импорт / экспорт PGN и FEN
- [ ] Сохранение истории партии
- [ ] Чат
- [ ] Приглашения
- [ ] Авторизация через соцсети Yandex, Ok, Vk, Google
- [ ] Телеграм бот для игры с телефона

## Инфраструтктура разработки и эксплуатации

См. [infrastructure.md](INFRASTRUCTURE.md).

## Запуск (Install)

Проект представляет собой классическое Rails-приложение, поэтому к нему применимы [все существующие подходы](https://guides.rubyonrails.org/getting_started.html).

```shell
$ bundle install
```

Затем необзодимо настроить файлы `database.yml` и `cable.yml`:

```shell
$ cp config/database.yml.example config/database.yml
$ vim config/database.yml
```

```shell
$ cp config/cable.yml.example config/cable.yml
$ vim config/cable.yml
```

Теперь необходимо создать и/или мигрировать базу данных:

```shell
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rails s -b 0.0.0.0
```

### docker-compose

## Тестирование (Running Tests)

В качестве фреймворка тестирования используется [RSpec](https://rspec.info/) и в частности [RSpec-Rails](https://github.com/rspec/rspec-rails). Для запуска юнит-тестов достаточно выполнить команду:

```shell
$ rspec
```

### Результыта теcтирования

Результаты тестирование в формате `JUnit` появятся в файле `junits/rspec.xml`

### Покрытие Кода (Code Coverage)

Для рассчёта [покрытия код](https://ru.wikipedia.org/wiki/Покрытие_кода) используется библиотека [simplecov](https://github.com/simplecov-ruby/simplecov) и его результаты выводятся в двух форматах: в виде статического html-сайта в папке `coverage/tests/index.html` и в текущем терминале в текстовом виде:

```shell
Run options: exclude {:capybara=>true}

ApplicationRecord
  is expected to be
  is expected to be a kind of Class

Finished in 0.00907 seconds (files took 1.19 seconds to load)
2 examples, 0 failures

Coverage report generated for tests to /home/jerry/devel/gitlab/rails-gambit/coverage/tests. 3 / 26 LOC (11.54%) covered.

COVERAGE:  11.54% -- 3/26 lines in 8 files

+----------+----------------------------------------------+-------+--------+-------------+
| coverage | file                                         | lines | missed | missing     |
+----------+----------------------------------------------+-------+--------+-------------+
|   0.00%  | app/channels/application_cable/channel.rb    | 4     | 4      | 1-4         |
|   0.00%  | app/channels/application_cable/connection.rb | 4     | 4      | 1-4         |
|   0.00%  | app/controllers/application_controller.rb    | 2     | 2      | 1-2         |
|   0.00%  | app/jobs/application_job.rb                  | 2     | 2      | 1, 7        |
+----------+----------------------------------------------+-------+--------+-------------+
2 file(s) with 100% coverage not shown
```

## Присоединиться к разработке

В [contributing.md](CONTRIBUTING.md) собраны правила и рекомендации для текущих и новых разработчиков. Ждём и тебя тоже!.

<div align="center" width="100px">

[![rnds](./RNDSOFT.png)](https://github.com/RND-SOFT/)
[![sfu](./SFU.png)](https://sfedu.ru/)

</div>
