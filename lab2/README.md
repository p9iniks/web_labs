# toy_app

Мини-приложение из главы 2 Ruby on Rails Tutorial.

В приложении есть ресурсы Users и Microposts, CRUD-операции, связь пользователя с его сообщениями и валидации.

## Запуск

```powershell
cd C:\Users\p9in\Documents\uni\sem7\web\toy_app
C:\Ruby34-x64\bin\ruby.exe -S bundle install
C:\Ruby34-x64\bin\ruby.exe -S rails db:prepare
C:\Ruby34-x64\bin\ruby.exe -S rails db:seed
C:\Ruby34-x64\bin\ruby.exe -S rails server
```

Открыть:

- http://localhost:3000/users
- http://localhost:3000/microposts

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
