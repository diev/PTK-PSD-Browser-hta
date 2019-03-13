# ![icon] ПТК ПСД - Обозреватель отчетности

[![Build status]][appveyor]
[![GitHub Release]][releases]

Наглядный просмотр и работа с архивом посылок [ПТК ПСД] 
Банка России.

![Рабочее окно приложения]

* [История версий, Changelog]
* [Идеи и пожелания, ошибки]
* [3rd party software]
* [Лицензионное соглашение]
* [Скачать]

-----

Данное HTA-приложение предназначено для просмотра архива посылок ПТК ПСД.
Хотя в штатном Клиенте ПТК ПСД присутствует такая возможность (кнопка с зеленой 
буквой "М" на панели инструментов, по которой открывается поиск в архиве), но 
ущербность этой реализации подтолкнула на написание отдельной программы.

Подробнее о программе смотрите в [Wiki].

Смотрите также проект [SVK Transport] для доставки посылок в систему [СВК] 
Банка России по протоколу HTTP.

## История версий, Changelog

Проект импортирован на GitHub с версии 6.0.4 с его страницы на 
[Bitbucket].

Полная история версий в файле [CHANGELOG].

## Идеи и пожелания, ошибки

Данные для обратной связи находятся в коде заголовка HTA приложения.  
(Всякие хотелки принимаются и по возможности претворяются.)

Есть некоторые [Идеи] развития проекта.
Свои пожелания и сообщения об ошибках лучше размещать в [Issues].

## 3rd party software

Проект использует свободнораспространяемый архиватор 
[7-Zip] (консольную версию).

## Лицензионное соглашение

Licensed under the [Apache License, Version 2.0].  
Вы можете использовать все совершенно свободно без всяких ограничений.

[История версий, Changelog]: #история-версий-changelog
[Идеи и пожелания, ошибки]: #идеи-и-пожелания-ошибки
[3rd party software]: #3rd-party-software
[Лицензионное соглашение]: #лицензионное-соглашение
[Скачать]: #download

[Wiki]: {{ site.github.wiki_url }}
[Идеи]: {{ site.github.repository_url }}/projects/1
[Issues]: {{ site.github.issues_url }}
[releases]: {{ site.github.releases_url }}/latest

[CHANGELOG]: {{ site.github.repository_url }}/blob/master/CHANGELOG.md
[Apache License, Version 2.0]: http://www.apache.org/licenses/LICENSE-2.0 "LICENSE"

[icon]: assets/images/ptkpsd.png
[Рабочее окно приложения]: assets/images/screen659.png

[SVK Transport]: /SVK-Transport-hta

[appveyor]: https://ci.appveyor.com/project/{{ site.github.repository_nwo }}
[ПТК ПСД]: http://ptkpsd.ru/
[СВК]: http://www.cbr.ru/mcirabis/itest/
[Bitbucket]: https://bitbucket.org/html-applications/ptkpsd-browser
[7-Zip]: https://www.7-zip.org/

[Build status]: https://ci.appveyor.com/api/projects/status/j011cbjlv4k6wirk?svg=true
[GitHub Release]: https://img.shields.io/github/release/{{ site.github.repository_nwo }}.svg
