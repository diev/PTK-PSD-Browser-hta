# ![icon] [ПТК ПСД - Обозреватель отчетности]

[![Build status]][appveyor]
[![GitHub Release]][releases]

Наглядный просмотр и работа с архивом посылок [ПТК ПСД] Банка России.

![Рабочее окно приложения]

* [История версий, Changelog]
* [Идеи и пожелания, ошибки]
* [3rd party software]
* [Лицензионное соглашение]

-----

Данное HTA-приложение предназначено для просмотра архива посылок ПТК ПСД.
Хотя в штатном Клиенте ПТК ПСД присутствует такая возможность (кнопка с зеленой 
буквой "М" на панели инструментов, по которой открывается поиск в архиве), но 
ущербность этой реализации подтолкнула на написание отдельной программы.

Подробнее о программе смотрите в [Wiki].

Смотрите также проект [SVK Transport] для доставки посылок в систему [СВК] 
Банка России по протоколу HTTP.

## История версий

Проект форкнут на GitHub с версии 6.0.4 с его авторской страницы на 
[Bitbucket].

Полная история версий в файле [CHANGELOG].

## Идеи и пожелания, ошибки

Данные для обратной связи находятся в коде заголовка HTA-приложения.  
(Всякие хотелки принимаются и по возможности претворяются.)

Есть некоторые [Идеи] развития проекта.
Свои пожелания и сообщения об ошибках лучше размещать в [Issues].

## 3rd party software

Проект использует свободнораспространяемый архиватор [7-Zip] (консольную 
версию).

## Лицензионное соглашение

Licensed under the [Apache License, Version 2.0].  
Вы можете использовать все совершенно свободно без всяких ограничений.

[История версий, Changelog]: #история-версий-changelog
[Идеи и пожелания, ошибки]: #идеи-и-пожелания-ошибки
[3rd party software]: #3rd-party-software
[Лицензионное соглашение]: #лицензионное-соглашение

[Wiki]: https://github.com/diev/PTK-PSD-Browser-hta/wiki
[Идеи]: https://github.com/diev/PTK-PSD-Browser-hta/projects/1
[Issues]: https://github.com/diev/PTK-PSD-Browser-hta/issues
[releases]: https://github.com/diev/PTK-PSD-Browser-hta/releases/latest

[CHANGELOG]: CHANGELOG.md
[Apache License, Version 2.0]: LICENSE

[icon]: docs/assets/images/ptkpsd.png
[Рабочее окно приложения]: docs/assets/images/screen659.png

[ПТК ПСД - Обозреватель отчетности]: http://diev.github.io/PTK-PSD-Browser-hta
[SVK Transport]: http://diev.github.io/SVK-Transport-hta

[appveyor]: https://ci.appveyor.com/project/diev/ptk-psd-browser-hta
[ПТК ПСД]: http://ptkpsd.ru/
[СВК]: http://www.cbr.ru/mcirabis/itest/
[Bitbucket]: https://bitbucket.org/html-applications/ptkpsd-browser
[7-Zip]: https://www.7-zip.org/

[Build status]: https://ci.appveyor.com/api/projects/status/j011cbjlv4k6wirk?svg=true
[GitHub Release]: https://img.shields.io/github/release/diev/PTK-PSD-Browser-hta.svg
