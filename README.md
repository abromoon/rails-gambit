# Рельсовый Гамбит (Rails Gambit)

[![pipeline status](https://gitlab.com/r4060/rails-gambit/badges/main/pipeline.svg)](https://gitlab.com/r4060/rails-gambit/)
[![coverage report](https://gitlab.com/r4060/rails-gambit/badges/main/coverage.svg)](https://gitlab.com/r4060/rails-gambit/)
[![license](https://badgen.net/gitlab/license/r4060/rails-gambit?color=98c510)](https://gitlab.com/r4060/rails-gambit/blob/main/LICENSE)
[![open-issues](https://badgen.net/gitlab/open-issues/r4060/rails-gambit?icon=gitlab)](https://gitlab.com/r4060/rails-gambit/-/issues)
[![contributors](https://badgen.net/gitlab/contributors/r4060/rails-gambit?icon=user)](https://gitlab.com/r4060/rails-gambit/)
[![telegram](https://img.shields.io/static/v1?label=telegram&message=news&color=blue&logo=telegram)](https://t.me/railsgambit)
[![wiki](https://img.shields.io/static/v1?label=wiki&message=docs&color=white&logo=wikipedia)](https://gitlab.com/r4060/rails-gambit/-/wikis/home)

`Rails Gambit` — это образовательный проект по реализации онлайн платформы для совместной игры в шахматы и не только. Он создан с целью изучения `Ruby on Rails` студентами. Упор делается на применение передовых подходов в современной веб-разработке, погружение в процесс "на всю глубину" включая обслуживание серверов, доставку продуктового кода и популяризацию шахмат.

---

[[_TOC_]]

## Планы, возможности, фичи (To Do)

- [x] Регистрация/Авторизация
- [x] Профиль игрока
- [ ] Рейтинг игрока
- [ ] Шахматные упражения
- [ ] Панель администратора
- [x] Сетевая игра вдвоём
- [ ] Загрузка/Выгрузка PGN и FEN
- [ ] Сохранение истории партии
- [ ] Чат
- [ ] Приглашения
- [~] Авторизация через Yandex
- [~] Авторизация через Odnoklassniki
- [x] Авторизация через VKontakte
- [x] Авторизация через Google
- [~] Бот в Telegram для игры с телефона

## Инфраструктура разработки и эксплуатации (Infrastructure)

Подробнее в [INFRASTRUCTURE.md][].

## Зависимости (Requirements)

- `Ruby`
- `Node.js`
- `Yarn`
- `Bundler`
- `PostgreSQL`
- `Redis`
- `Docker`
- `VS Code` или `RubyMine`

## С чего начать? (Beginners Guide)

Если вы мало знакомы с языком `Ruby`, то можете подчерпнуть знаний из следующих источников:

- [Getting Started with Rails][] — официальный гайд от разработчиков Ruby on Rails. Пошаговое создание простенького блога со статьями и комментариями. Есть [русская версия][] от комьюнити, но там может быть устаревшая версия гайда.
- [Ruby on Rails 6/7: уроки][] — плейлист с хорошими уроками по Ruby on Rails на русском языке.
- [Turbo Rails Tutorial][] — гайд по Hotwire, которые используются для обновления данных на странице без её перезагрузки.

## Запуск (Install)

1. Устанавливаем зависимости приложения:

```shell
bundle install
yarn install
```

1. Настраиваем доступ к БД через переменные окружения в файлах `database.yml` и `cable.yml`.

1. Теперь необходимо создать базу данных, мигрировать схему веб-приложения и заполнить БД тестовыми данными:

```shell
rails db:create
rails db:migrate
rails db:seed
```

1. Запустить приложение:

```shell
bin/dev
```

## Проблемы при запуске (Troubleshooting)

## Тестирование (Running Tests)

В качестве фреймворка тестирования используется [RSpec][], в частности [rspec-rails][]. Для запуска тестов достаточно выполнить команду:

```shell
rspec
```

### Результаты теcтирования (Tests Results)

Результаты тестирования в формате `JUnit` появятся в файле `junits/rspec.xml`.

### Покрытие кода (Code Coverage)

Для рассчёта [покрытия кода][] используется библиотека [SimpleCov][]. Результаты выводятся в двух форматах: в виде статического HTML сайта в папке `coverage/tests/index.html` и в терминале.

Пример вывода в терминал:

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

## Присоединиться к разработке (Contributing)

В [CONTRIBUTING.md][] собраны правила и рекомендации для разработчиков. Ждём и тебя тоже!

[INFRASTRUCTURE.md]: INFRASTRUCTURE.md

[Getting Started with Rails]: https://guides.rubyonrails.org/getting_started.html
[русская версия]: https://rusrails.ru/getting-started
[Ruby on Rails 6/7: уроки]: https://youtube.com/playlist?list=PLWlFXymvoaJ_IY53-NQKwLCkR-KkZ_44-&feature=shared
[Turbo Rails Tutorial]: https://www.hotrails.dev/turbo-rails

[RSpec]: https://rspec.info/
[rspec-rails]: https://github.com/rspec/rspec-rails
[покрытия кода]: https://ru.wikipedia.org/wiki/Покрытие_кода
[SimpleCov]: https://github.com/simplecov-ruby/simplecov

[CONTRIBUTING.md]: CONTRIBUTING.md
