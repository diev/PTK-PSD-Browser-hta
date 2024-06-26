﻿# История версий

Нумерация версий старается следовать принципам
[семантического версионирования](http://semver.org/lang/ru/) со следующими
особенностями в смене трех чисел через точку (`1.2.3`):

1. Когда сильно меняется внешний вид *(требуется новое обучение
пользователей)* или функционал программы *(требуется обратить внимание
администраторов и сделать вдумчивые перенастройки)*;
2. Когда что-то добавляется во внешний вид *(требуется обратить внимание
пользователей - добавлена какая-то их хотелка)* или добавлен параметр в файл
настройки *(поведение которого по умолчанию ничего для администраторов не
меняет)*;
3. Когда сделаны какие-то незначительные изменения в коде или исправлены
ошибки *(но по-началу изменения могут быть и значительными - пока идет
процесс устаканивания всех нововведений)*.

## v6 - [v5] - [v4] - [v3] - [v1]

### 6.10

Настраиваемое меню *Tools* для средств пользователя.

#### 6.10.5 (2024-06-18): Add cp866 for all UVKES+.txt files

- Добавлена в исключения кодировка всех UVKES+.txt файлов.

#### 6.10.4 (2023-02-08): Add indefinite form X.690

- Если длина блока закодированных данных на момент кодирования длины
неизвестна, то в октет длины записывается значение 0х80, что указывает
на кодирование с неопределенной длиной (indefinite form).
В этом случае в конце блока закодированных данных должны стоять октеты
00 00, явно указывающие на его завершение.

#### 6.10.3 (2021-03-23): Fix recursion

- Устранено переполнение стека при некоторых зашифрованных файлах.

#### 6.10.2 (2021-03-22): Comment abandoned code out

- Закомментирован устаревший код - позже будет удален.

#### 6.10.1 (2021-03-19): Add run action

- Добавлена команда:
  - *run* для запуска программы (с параметрами).

#### 6.10.0 (2021-03-19): Add Tools menu

- ПКМ на toolbar показывает меню, настраиваемое в INI.
Пока добавлены только две команды:
  - *explore* для вызова Проводника Windows с выделенным объектом;
  - *flag* для записи файлового флага, чтобы вызвать внешний обработчик.

### 6.9

Обмен ЭС с ФОИВ.

#### 6.9.1 (2020-01-15): Fix 7z

- Исправление невозможности новых версий `7z.exe` распаковать файлы с
подписью PKCS\#7.
- Добавление возможности обработки файлов с подписью PKCS\#7 с размерами
более 16.7 Мб (до 4 Гб).

#### 6.9.0 (2019-12-23): Add FOIV

- Добавление особенностей обмена с *Федеральными органами исполнительной
власти (ФОИВ)* - теперь только СКАД *Сигнатура* (СКЗИ *Верба-OW* ушла на
покой).
- Добавление работы с утилитой `spki1utl.exe` при наличии ее и ключей
(пока экспериментально - для локальной расшифровки ЭС).
- В дистрибутив добавлен файл `pki1.conf` с тестовым профилем.

### 6.8

Обеспечение совместимости с теми, кто остался на версии 6.0.4
*mozers*, развитие интерфейса.

#### 6.8.10 (2018-08-16): Fix linked docs

- Исправлен поиск Связанных документов (ПКМ в preview) для документов
по 440-П.

#### 6.8.9 (2018-04-09): Fix 7-Zip x86 on the x64 systems

- Исправлен поиск `7z.exe`, когда на системе x64 установлена версия x86.
(Версия не задалась - просто не устраивайте таких ситуаций.)

#### 6.8.8 (2018-04-06): Add Wiki

- Добавлена пустая папка `..\Post\Store` для прохождения начальных проверок.
- Эталонная БД MS Access перенесена в `..\Database` и добавлена ее
автоматическая распаковка для простоты первого запуска из репозитория.
Больше ничего не требуется для начального запуска HTA, кроме 7-Zip в системе.
- Добавлен файл `.gitignore` - для `*.mdb`.
- Добавлена возможность прямого использования переменных среды в параметре
`User.CurUser` (раньше было только в случае отсутствия параметра во всех ini
и только %USERNAME%).
- В проект добавлена Wiki с документацией, переработаны страницы.

#### 6.8.7 (2018-04-04): Replace multiple addRule()

- Удалены закомментированные в 6.6.1 неиспользуемые функции по записи
в реестр (используйте единократно скрипты из папки `admin`).
- Разделитель дат зафиксирован как `.` (кто-нибудь еще использует на
клиентских местах иные?).
- Добавление CSS сделано одномоментным и с поддержкой современных IE,
из которых исчезли специфические функции ранних IE).

#### 6.8.6 (2018-04-03): Add closures

- Уменьшено число глобальных переменных и функций.
- Тулбар открывается изначально меньшим, подправлен его код HTML.
- Функция Debug() сделана самодостаточной и теперь может применяться до
инициализации остального кода.

#### 6.8.5 (2018-03-27): DB connect refactoring

- Переписан модуль подключения к базам данных, упрощено описание в INI.
- Для тестирования на сайт добавлена пустая эталонная БД `etalon97.mdb`.
- Добавлен META-флаг для запуска движка в режиме IE8 (по-умолчанию IE7).
- В SysInfo добавлена информация о фактической версии работы движка.

#### 6.8.4 (2018-03-23): Fix few issues

- Исправлена ошибка при попытке одновременной записи кэша на диск.
- Размер полей ввода дат поставлен в зависимость от размера шрифта.
- Сохранение координат окна в куки только при его нераспахнутости.

#### 6.8.3 (2018-03-14): Fix start from IE

- Исправлена ошибка отсутствующих параметров при запуске из меню
Internet Explorer на панели задач Windows 10.

#### 6.8.2 (2018-03-07): Make toolbar responsive

- Тулбар стал менять высоту, подстраиваясь под свое перетекающее
содержимое.

#### 6.8.1 (2018-03-07): Add cookie to store window size

- Изменены стартовые размеры окна приложения.
- Добавлено сохранение позиции и размеров окна между запусками.
- Убрана проверка на наличие ini файлов (они могут быть как по-умолчанию,
так и указаны через ярлыки, или вообще не требоваться).
- В INI добавлены примеры настроек, действующие по-умолчанию.

#### 6.8.0 (2018-03-05): Mozers, welcome back

- Сверена функция перекодировок с новым кодом *mozers* в его
[версии](https://bitbucket.org/html-applications/ptkpsd-browser) 6.0.5.
- Код заново протестирован на валидность с помощью *JSHint* 2.9.4.
- Исправлены некоторые обнаруженные опечатки.
- Из программы удалена зависимость от указания `Path.PTKPSD` и `Path.HOME`.
- Путь к архиву посылок теперь берется из `Path.ARCHIVESTORE` в elo.ini.
- Путь к эталонной версии для автообновления теперь достраивается к
полученному из `Path.FORM` в elo.ini.
- Кодировка файлов ini может быть как в utf-8 (важно для сайтов),
так и в прежнем windows-1251 (может быть важно при использовании русских
путей).
- В SysInfo добавлена информация об источнике автообновления.

### 6.7

Добавление поддержки БД Oracle, использование любой версии 7-Zip.

#### 6.7.8 (2018-03-01): Fix AutoUpdate 6.7.5

- Исправлено автообновление, которое было повреждено в 6.7.5.

#### 6.7.7 (2018-03-01): Add DOC ignorance as a spam

- Добавлен игнор нового спама от ЦБ в виде несистемных (для ПТК ПСД)
файлов `.doc`.
- Оптимизированы некоторые регулярные выражения.

#### 6.7.6 (2018-03-01): Add display of filename for unpacked sendings

- Добавлен показ имени файла у содержимого, разосланного не в архиве.

#### 6.7.5 (2018-02-20): Add SysInfo, fix 6.7.4, refactoring

- Добавлена Системная информация при неудаче запуска и по флажку+Shift.
- Исправления 6.7.4.
- Переделка внутреннего кода (убраны многие глобальные переменные).

#### 6.7.4 (2018-02-20): Add support for all 7-Zips starting from 4.65

- Добавлена поддержка любых alpha и beta версий *7-Zip*, начиная от 4.xx.

#### 6.7.3 (2018-02-02): Fix different INI encodings and AutoUpdate if readonly

- Исправлено чтение разных кодировок elo.ini и своего INI.
- Добавлено сообщение в модуль автообновления об отсутствии прав на запись.

#### 6.7.2 (2018-02-02): Fix Russian paths in INI

- Исправлен доступ к русским путям в INI (для тех, кто застрял на 6.6.0).
- Исправлен показ системной информации, если доступа к базе нет.
- Протестирована совместимость с новым *7-Zip* 18.01.

#### 6.7.1 (2018-02-01): Fix Autoswitch Access/SQL for dd.mm and mm.dd

- Число 01.02 ~ 02.01 вызвало ложное автоопределение Access.
- Упорядочивание блоков try finally.

#### 6.7.0 (2018-01-19): Autoswitch Access/SQL (MS and Oracle)

- Сделано автопереключение форматов дат Access и SQL (Microsoft и Oracle)
путем перехвата ошибки запроса при первом обращении.

### 6.6

Оптимизация скорости работы программы в IE8 на Windows XP, вынесение
единоразовых задач, которые ныне требуют админских привилегий.

#### 6.6.3 (2017-12-05): Fix issue

- Fix #8 (При обновлении по кнопке предлагает скачать файл).

#### 6.6.2 (2017-11-29): Fix issue

- Fix #7 (Чекбоксы в Тулбаре заморожены).

#### 6.6.1 (2017-11-24): Make great optimizations, abandon sending of 365P

- Пересмотрен весь код с целью максимального ускорения программы в IE8
(максимальный для Windows XP).
- Добавлены возможности прервать загрузку и затем выборочно продолжить.
- Удалены код и форма по формированию ответов по Положению 365-П вручную в
связи с неактуальностью.
- Доступ к базе ПТК ПСД оставлен только для чтения.
- Добавлена функция получения системной информации по клику на флажок с
нажатым Shift - позже она будет расширена.
- Добавлены файлы реестра в папку `admin` для добавления в число доверенных
сайтов и доступа за пределы домена (при установке на сетевой сервер)
Администратором Windows 7+ (в самой программе эти функции записи в реестр
из версии 3.8.0 закомментированы).
- Добавлен образец файла регистрации `AxCalendar.ocx` из комплекта ПО
Клиента ПТК ПСД .
- Fix #5 (Не стало возможности выбрать ретроспективу редкой формы) -
добавлен еще один checkbox для отключения фильтра принятых за период.
- Fix #6 (Не всегда срабатывает автообновление с сервера) - сделано чтение
большего количества строк в поисках номера эталонной версии.

#### 6.6.0 (2017-11-12): Remove binaries, add support for all actual 7z.exe

- Протестирована работа со всеми актуальными версиями 7-Zip: 9.20, 16.04,
17.01 beta, x86 и x64.
- Оптимизирована работа распаковщика с автоопределением версии 7-Zip
(выявлены несовместимости его версий 9.20 и 16.04+ по выводу и параметрам).
- Бинарные файлы в папке bin (`7z.exe` и `7z.dll` версии 9.20) исключены из
дистибуции.
- В INI добавлен параметр `unpacker`, по умолчанию равный `bin\7z.exe`.
- Внутри дистрибутивного пакета `zip` файлы перенесены в папку
`PTK_PSD_Browser`.
- Обновлена документация.
- Сведен воедино из разных источников этот `changelog` по идеям
<http://keepachangelog.com/ru/1.0.0/>

### 6.5

Оптимизация кода программы для скорости работы в старых mustdie IE6-7.

#### 6.5.11 (2017-11-10)

- Add info about used 7-Zip 9.20 //16.04 and original licenses.

#### 6.5.10 (2017-11-10)

- Add the version to the cache file name.

#### 6.5.9 (2017-11-10)

- Update the package.

#### 6.5.8 (2017-11-10)

- Add forms as disabled if no files in DB for the period.

#### 6.5.7 (2017-11-09)

- Optimize for speed in old IE6-7.

#### 6.5.6 (2017-11-07)

- Remove the ASCII Art banner.

#### 6.5.5 (2017-11-06)

- Fast string arrays for IE7-.

#### 6.5.4 (2017-11-03)

- Refactor loading.

#### 6.5.3 (2017-11-03)

- Add the banner for start.

#### 6.5.2 (2017-11-02)

- Fix some visual issues.

#### 6.5.1 (2017-11-02)

- Replace TABLE with DIV.

#### 6.5.0 (2017-10-31)

- Add `FILEDSN` and `by_posttype_checked` optional parameters to INI.
- Версия посвящена оптимизации кода Javascript для скорости старых
браузеров IE6 и 7 на Windows XP.

### 6.4

Расширение списка форм и показ их кодов, переключатели на Тулбаре.

#### 6.4.4 (2017-10-30)

- Fix compatibility SQL 2014 and Access.

#### 6.4.3 (2017-10-30)

- Add the STATE_ for error values of 3.

#### 6.4.2 (2017-10-29)

- Update to Microsoft SQL 2014.

#### 6.4.1 (2017-10-27)

- Add visual responce to switches of the checkbox.

#### 6.4.0 (2017-10-27)

- Add a checkbox to show the posttype codes in the Forms list.
- Реализация просьбы *Александра Балакирева* показывать коды форм
и расширить комбобокс (старый глюк некоторых IE).

### 6.3

Указание ini-файлов в ярлыке по правилам Клиента ПТК ПСД.

#### 6.3.4 (2017-10-24)

- Add Progress Bar and fix *JSHint* suggestions.

#### 6.3.3 (2017-10-23)

- Fix some points.

#### 6.3.2 (2017-10-20)

- Add a new mask of files in the old cp866 encoding.

#### 6.3.1 (2017-10-20)

- Refactoring.

#### 6.3.0 (2017-10-19)

- Add the command line for INI pointing, add color icons.
- Теперь программа понимает параметры, указанные в коммандной строке
ярлыка, аналогично поведению Клиента ПТК ПСД (просьба *Александра Балакирева*).

### 6.2

Добавление визуальности и полноты предоставления информации по вообще
всем формам, ускорение первого отклика при старте.

#### 6.2.10 (2017-10-13)-

- Fix regexp for parsing XML.

#### 6.2.9 (2017-10-13)

- Fix ASN.1 reading for files more 64KB.

#### 6.2.8 (2017-10-13)

- Add info from GESMES.

#### 6.2.7 (2017-10-13)

- Fix .fontcolor().

#### 6.2.6 (2017-09-07)

- Add highlighting for 440-П like 311-П.

#### 6.2.5 (2017-09-05)

- Add two step loading to improve the user interface.

#### 6.2.4 (2017-09-05)

- Add the *semver* comparing for autoupdate.

#### 6.2.3 (2017-09-04)

- Add autoupdate to the server stored version.

#### 6.2.2 (2017-09-01)

- Minimize the preview frame on start (IE compatibility?).

#### 6.2.1 (2017-09-01)-

- Add filenames to into.

#### 6.2.0 (2017-08-31)

- Add the status of reception (on the left) to every form.
- Добавление визуальности и полноты предоставления информации по всем
формам.

### 6.1

Добавление 550-П и 440-П.

#### 6.1.10 (2017-08-30)

- Refactoring of code.

#### 6.1.9 (2017-08-30)

- Fix if everything in VRB.

#### 6.1.8 (2017-08-30)

- Refactoring of 440-П definitions.

#### 6.1.7 (2017-08-29)

- Add new definitions for 440-П - thanks to *Павел Дворников*.
- Fix cache alerts.

#### 6.1.6 (2017-08-25)

- Add version attribute to Cache.

#### 6.1.5 (2017-08-01)

- Fix few cp866 files.

#### 6.1.4 (2017-07-07)

- Refactoring of parcels.

#### 6.1.3 (2017-07-01)

- Работа с web страницей для проекта.

#### 6.1.2 (2017-07-01)

- Improve single XML files.

#### 6.1.1 (2017-06-28)

- Fix cp866 for BOS1_RPO\* files.

#### 6.1.0 (2017-06-27)

- Add 550-П (wz), visual loading.
- Добавление новых форм.

### 6.0

Переход ЦБ на Сигнатуру 5 и формат PKCS\#7, разработку и сопровождение
с версии 6.0.4 теперь полностью ведет *Дмитрий Евдокимов*.

#### 6.0.13 (2017-06-26)

- Update date highlight signatures, exclude `.docx` from unpacking.

#### 6.0.12 (2017-06-23)

- Add `Shift+Click` to delete the disk cache (a Click is to refresh only).

#### 6.0.11 (2017-06-19)

- Add a new format with `.xml.cab` and Russian letters in filenames.

#### 6.0.10 (2017-04-25)

- Update BitBucket to <https://github.com/diev/PTK-PSD-Browser-hta>

#### 6.0.9 (2017-03-09)

- Add one more mask for files still in cp866.

#### 6.0.8 (2017-02-08)

- Fix Регистрозависимая проверка имен файлов и русские имена файлов.

#### 6.0.7 (2017-01-17)

- Add two file masks still receiving in cp866.
- Проект импортирован в Git на *GitHub* и включен в CI на *AppVeyor*.
- При импорте слетели все русские служебные текстовки.

#### 6.0.6 (2016-12-19)

- Fix Неверная кодировка в `PB2_RPO\*.txt`.

#### 6.0.5 (2016-12-07)

- Fix В некоторых формах русские строки кракозябрами.
- Улучшена читабельность содержимого файлов (utf-8 в XML, отключен автодетект
dos/win).
- Увеличены размеры окна при старте.
- Разработку и сопровождение этой версии программы теперь ведет *Дмитрий
Евдокимов*.

#### 6.0.4 (2016-03-03)

- Функция Asc() оформлена как String.prototype.charCode1251() - последняя
правка *mozers*.

#### 6.0.3 (2016-03-03)

- Учтены пожелания по ясности кода разбора PKCS\#7.

#### 6.0.2 (2016-03-03)

- Строка OID сразу в UTF.

#### 6.0.1 (2016-03-03)

- Рефакторинг кода PKCS\#7.

#### 6.0.0 (2016-03-03)

- Поддержка формата PKCS\#7 новой Сигнатуры 5.

*[top]*

## v5

### 5.10

#### 5.10.1 (2015-11-10)

- Correct HTA header

#### 5.10.0 (2014-08-25)

- В readme.htm добавлено предупреждение о невозможности загрузки упакованного
дистрибутива с помощью Google Chrome. (Парадокс - Хром не может работать с
родным сайтом).

#### 5.10.0 (2014-07-18)

- После осуществления поиска связанных документов, щелчок на выбранном файле
в списке результатов приводит не только к показу содержимого посылки в нижнем
окне, но и к позиционированию курсора к найденному документу в этой посылке.

### 5.9

#### 5.9.0 (2014-07-18)

- Добавлено распознавание посылок (и ответов на них) с перечнем ДФМиВК
(Н.Новгород). Автор - *Лебедев В.Н.*

### 5.8

#### 5.8.1 (2014-07-18)

- Исправлены несколько ошибок:
- отсутствие информации о SA посылке, если она (или ответ на нее) содержит
имя файла, включающий 2-значный цифровой номер;
- отсутствие информации 'подтв. о получении' на mz посылки;
- орфографические ашипки.

#### 5.8.0 (2014-07-18)

- Модифицированы функции распознавания и отображения посылок XML формата.
В основном это коснулось посылок формы 311-П.

### 5.7

#### 5.7.0 (2014-07-04)

- На странице документации исправлена ссылка на загрузку дистрибутива (так
как на странице Download, в результате запрета Google, лежат лишь устаревшие
версии).
- Добавлено распознавание посылок 311-П нового формата (XML).

### 5.6

#### 5.6.0 (2013-12-19)

- Добавлено распознавание посылок с запросами ФНС о наличии уведомления об
иностранных счетах. Такие запросы будут отображаться как "ФНС спр."
Автор - *Дмитрий Евдокимов*.

### 5.5

#### 5.5.1 (2013-01-04)

- Ответы ИЭС3 на запросы 365-П отображаются в списке посылок с пояснительной
надписью "подтверждение о получении".

#### 5.5.0 (2012-08-10)

- Добавлена форма для формирования произвольных (PB1 и PB2) подтверждений на
запросы 365-П. Вызов формы осуществляется из пункта контекстного меню
"Сформировать подтверждение PB...", возникающего при клике ПКМ по конкретному
файлу запроса, отображаемому в окне предпросмотра.
Не путайте с пунктом контекстного меню "Сформировать подтверждения PB1",
возникающем при клике ПКМ по списку файлов!

### 5.4

#### 5.4.5 (2012-08-10)

- Символы шрифта Wingdings, использованные в качестве иконок панели
инструментов и в контекствых меню, заменены на их hex значения.
- Переменная `file_on_clicked_in_preview` (имя файла в окне предпросмотра,
на котором кликнули мышью) сделана глобальной.

#### 5.4.4 (2012-08-02)

- Уточнено регулярное выражение для детектирования подписи файла.
- Переписаны функции детектирования и удаления ЭЦП.

#### 5.4.3 (2012-07-12)

- Ранее функция подсветки всего текста HighlightTextWithHeaders вызывалась
рекурсивно, что иногда приводило к неоправданному увеличению количества
вложенных тегов.

#### 5.4.2 (2012-07-12)

- Стилевое оформление таблиц в окне просмотра вынесено в таблицу стилей,
что позволило уменьшить размер кеша.

#### 5.4.1 (2012-06-20)

- Если выписка на запрос 365-П содержит несколько счетов, то все они будут
отображены в панели просмотра. (Ранее отображался только первый).
- Из просмотра исключаются только перечни операций по счету (дабы избежать
"тормозов" при просмотре огромных списков).

#### 5.4.0 (2012-06-15)

- Модифицирована функция ReadINIFile. Теперь в ini-файле:
- В качестве перевода строк разрешены любые комбинации символов `\r` и `\n`;
- Пробельные символы в начале и конце строк игнорируются;
- Ключи и секции, не содержащие реальных значений, игнорируются;
- Разрешены пробелы в именах секций и параметров (использовать не
рекомендуется);
- Параметры одноименных секций объединяются;
- При наличии в секции нескольких одноименных параметров, используется
самое последнее (нижнее) значение;
- После имени секции допустим текст (комментарий).

### 5.3

#### 5.3.0 (2012-05-24)

- Добавлена обработка выписок (файлов `BV\*.vrb`) на запросы 365-П.
- На просмотр выводится только информационная часть. Перечень операций
скрывается. Иначе, ввиду большого объема информации, "тормозит" вся программа.

### 5.2

#### 5.2.0 (2012-05-05)

- Стало возможным задание индивидуального (для определенного типа посылки)
каталога для диалога сохранения.

### 5.1

#### 5.1.1 (2012-05-04)

- Если временный каталог, создаваемый программой, был удален извне, то при
закрытии приложения возникала ошибка.

#### 5.1.0 (2012-05-03)

- В контекстное меню списка посылок добавлен пункт "Перечитать содержимое
посылки", позволяющий распаковать выбранную посылку заново.
Ранее для выполнения такой операции было необходимо удалять весь кеш.

### 5.0

#### 5.0.8 (2012-05-03)

- Во всплывающей подсказке над кнопками "сегодня" и "вчера" дата показывалась
без разделителя.
- Небольшая оптимизация функции Date2Obj().

#### 5.0.7 (2012-04-18)

- Исправлено детектирование КА из ЭЦП документа.

#### 5.0.6 (2012-04-10)

- Исправлена подсветка в тексте сообщения слов "(не) принят(ао)"

#### 5.0.5 (2012-04-06)

- Исправлен цвет цифр, показывающих количество вложений в посылке.
Ранее, при дефолтовой цветовой схеме в Windows XP, цифры сливались с фоном
выделенной строки.

#### 5.0.4 (2012-04-04)

- Исправлена ошибка, при которой (при разделителе даты `/`) выборка могла не
соответствовать выбранному интервалу дат.

#### 5.0.3 (2012-03-30)

- Исправлена ошибка дизайна, при которой слишком длинный перечень содержимого
посылки, не умещающийся в одну строку, вызывал увеличение высоты строки
списка посылок. Смотрелось это очень некрасиво.

#### 5.0.2 (2012-03-29)

- Исправлена ошибка, возникавшая на системах, где в региональных установках в
качестве разделителя даты был указан слеш `/`, а не точка.

#### 5.0.1 (2012-03-25)

- При смене просматриваемого файла посылки, экран в окне предпросмотра
прокручивается к началу.
- Улучшено распознавание кодировки файлов (dos866/win1251).

#### 5.0.0 (2012-03-12)

- Модифицирован дизайн программы. Список посылок стал более нагляден.
Интерфейс теперь поддерживает стили Windows.
- Реализован поиск связанных документов. То есть программа может найти
все документы, в которых упоминается имя текущего файла.
В первую очередь данное новшество предназначено для поиска входящих и
отправленных документов, а так же квитанций на них по формам 311-П и 365-П.
- Для нестандартных подключений (например, при использовании файлового
DSN) стало возможным задать в INI `строку подключения` к БД.
- Более удобен стал выбор интервала дат. Календарь после выбора даты
автоматически схлопывается и список посылок обновляется.
- Выделенный в окне предпросмотра текст, с помощью правой кнопки мыши,
копируется в буфер обмена.

*[top]*

## v4

### 4.2

#### 4.2.4 (2012-02-27)

- На некоторых системах, при запуске из сетевого каталога, возникало
предупреждение ADO Security Warning:
*"This Website uses a data provider that may be unsafe. If you trust the
website, click OK, otherwise click Cancel."*
- Иногда КА в сообщениии мог быть "не распознан".

#### 4.2.3 (2012-02-16)

- Исправлена ошибка, в результате которой, при обработке посылок
нестандартной структуры (содержащих папки внутри архива), возникала ошибка
в строке 1025: var line_count = text.match(/\n/g).length;

#### 4.2.2 (2012-02-15)

- Добавлены всплывающие подсказки к пунктам раскрывающегося списка с перечнем
форм. Это позволяет прочесть длинные названия некоторых форм до их выбора.

#### 4.2.1 (2012-02-13)

- Один из интервалов дат "за 3 дня" заменен на "за 4 дня", что позволяет в
понедельник быстро просмотреть посылки за пятницу.
- Небольшие корректировки.

#### 4.2.0 (2012-02-08)

- Переписана процедура сохранения посылки (целиком, одного или всех вложенных
файлов).
- Сейчас при задании в ini-файле `sign_delete_onsave=1` подпись корректно
удаляется (ранее, при массовой выгрузке всех вложений, такого не происходило).

### 4.1

#### 4.1.0 (2012-02-03)

- Функция QueryDatabase теперь возвращает все имена полей в нижнем регистре,
что позволило корректно работать с БД на MS SQL.
- Добавлено распознавание SA посылки, содержащей "Сведения о работе с
монетой Банка России" (файл MNgmmuuu.xls), Н.Новгород.
- Исправлено распознавание SA посылок (MN, IA, IN, SK), С.Петербург.
- Добавлена проверка на существование файла в каталоге `POST\Store`.
- При задании параметра cache стало возможным использовать переменные
окружения.

### 4.0

#### 4.0.5 (2012-01-27)

- Разделитель страниц при печати теперь вставляется не только для \*.vrb
файлов, а для всех с количеством строк выше 18.

#### 4.0.4 (2012-01-22)

- ЭЦП в тексте сообщений показываются более корректно.
- Улучшено распознавание текста посылки (текстовое или нечитабельное
бинарное содержимое).
- Улучшено распознавание кодировки текста посылки (windows-1251 или dos-866).

#### 4.0.3 (2012-01-21)

- Программа перенесена в другой репозиторий
(система контроля версий - *Mercurial*).
- Исправлены ссылки на исходный код и страницу загрузки упакованных версий.

#### 4.0.3 (2012-01-14)

- Исправлена ошибка с выбором рейса из списка, если список содержал
единственную посылку.

#### 4.0.2 (2012-01-14)

- Исправлена ошибка с выбором рейса из списка после изменения интервалов дат.
- Добавлена проверка наличия обязательного параметра (`HOME` в elo.ini или
`PTKPSD` в PTK_PSD_Browser.ini), содержащего каталог установки ПТК ПСД.
- Функции \[Start]Refresh() переименованы в \[Start]CreatePostsList()

#### 4.0.1 (2012-01-13)

- Восстановлен блок кода, отвечающий за распознавание SA посылок.
(Он был по ошибке потерян в последнем коммите).

#### 4.0.0 (2012-01-12)

- Программа полностью переписана. Упорядочена структура. Доработаны
практически все функции.
- Самая длительная операция - распаковка и анализ содержимого посылки -
теперь осуществляется только один раз - во время запроса нового интервала дат.
- Все результаты кешируются в памяти программы и могут быть сохранены на
диске для последующих сеансов, поэтому скорость работы возросла многократно.
Особенно эффективно будет размещение кеша программы в общем сетевом каталоге
(с правами на запись), так как все пользователи будут пользоваться уже
подготовленными предыдущими пользователями данными.
- Изменены интервалы выбора дат. Можно выбрать посылки как за конкретную
дату, так и за произвольный интервал. Причем, дату можно задавать в любом виде
(разрешена сокращенная запись вида `14/9/11` или `12-1-12`).

*[top]*

## v3

### 3.10

#### 3.10.6 (2011-12-16)

- Исправлена ошибка, возникшая в версии 3.10.5.

#### 3.10.5 (2011-12-15)

- Клик мышью по заголовку таблицы в окне предпросмотра копирует имя
просматриваемого файла (без расширения) в буфер обмена.
- Это пригодится для создания BOS файлов - ответов на запросы по 365-П.
- Плюс небольшая структурная правка кода.

#### 3.10.4 (2011-12-14)

- Исправлено: Если путь к каталогу, где размещен PTK_PSD_Browser или путь
к БД содержал пробелы, то количество и состав посылок по 311-П и 365-П не
отображались в списке.

#### 3.10.3 (2011-12-12)

- Добавлено распознавание ВСЕХ типов сообщений ГНИ (356-П).
- Упрощены регулярные выражения для их детектирования.
- `archive_list.cmd` подчищает за собой следы работы.

#### 3.10.2 (2011-12-10)

- Обновление списка сообщений (при изменении интервала дат или типа сообщения)
теперь происходит в фоне, что позволяет избежать "замерзания" интерфейса при
длительных операциях.

#### 3.10.1 (2011-12-10)

- Добавлены подсказки для числовых кодов в сообщениях по 365-П.
- Они показываются в окне предпросмотра, сразу за числовым кодом, и выделены
другим цветом.
- Сейчас нет необходимости держать на столе распечатку с описанием форматов
сообщений, чтобы понять, какого типа информацию запрашивает с тебя налоговая
или был ли успешно прочитан твой ответ.

#### 3.10.0 (2011-12-10)

- Добавлена поддержка сообщений по 365-П.
- Так же, как для 322-П, в списке отображаются содержимое и количество
вложений во всех посылках.
- Так же, по пункту контекстного меню, формируются ответные подтверждения
(квитанции теперь не требуются).
- Старые посылки 322-П можно просматривать с прежним комфортом.

### 3.9

#### 3.9.4 (2011-12-10)

- Две новых процедуры получения перечня имен файлов в гибридном архиве любой
вложенности:
  1. С помощью внешнего пакетного файла `archive_list.cmd` (GetArcFileList)
  2. Если в нижнем фрейме уже отображено содержимое архива, то имена файлов
можно извлечь из заголовков таблиц (используется в Answer322P)

#### 3.9.3 (2011-12-10)

- Небольшие коррективы кода

#### 3.9.2 (2011-12-10)

- Заменен код для определения имени хоста (если программа расположена на
сетевом диске). С прежним вариантом (начиная с версии 3.8.0) возникала ошибка,
если программа была размещена локально.
Удивительно, что этого никто не заметил. Неужели у всех PTK_PSD_Browser лежит
в сетевом каталоге???

#### 3.9.1 (2011-12-05)

- Добавлена проверка на корректность заданного в ini-файле БИК и каталога
установки ПТК ПСД.

#### 3.9.0 (2011-10-17)

- Добавил номера моих кошельков в WebMoney и Яндекс.Деньги.
Вдруг какой-то хороший человек захочет поблагодарить автора?

#### 3.9.0 (2011-09-27)

- Теперь большинство своих настроек программа считывает из `%windir%\elo.ini`
(настоял - *Дмитрий Евдокимов*).
С прежним `PTK_PSD_Browser.ini` программа работать не будет!

### 3.8

#### 3.8.10 (2011-09-22)

- Теперь содержимое XML файлов показывается в окне просмотра.
- Парсинг xml осуществлен самым примитивным образом, но этого вполне
достаточно, чтобы видеть, например, текст ответа на транспортный конверт
по 364-П.

#### 3.8.9 (2011-09-22)

- В контекстное меню добавлена команда для распаковки всех файлов из посылки
в указанный каталог.

#### 3.8.8 (2011-05-23)

- Исправлена ошибка, в результате которой в списке не показывалось содержимое
ИЭС3 формы 311-П.

#### 3.8.7 (2011-05-05)

- Исправлена ошибка, в результате которой в окне просмотра не показывались
файлы с русскими именами, входящие в состав посылки.
- В маску исключений добавлено расширение `TIF`. Внутреннее содержимое таких
файлов приложение показывать не будет.

#### 3.8.6 (2011-04-25)

- Уточнено регулярное выражение для извлечения КА из подписи под сообщением.
И для Вербы, и для Сигнатуры теперь используется одна маска
(Автор - *Дмитрий Евдокимов*).

#### 3.8.5 (2011-04-25)

- Исправлена ошибка с извлечением КА из подписи под сообщением, в результате
которой КА из документов, подписанных Сигнатурой, иногда мог быть не определен.

#### 3.8.4 (2011-04-19)

- Приложение теперь использует не системную, а собственную иконку (чтобы не
зависеть от версии ОС).
- В readme.html откорректирован текст (чтобы с выходом новой версии не
править каждый раз).
- readme.html отконвертирован в utf-8

#### 3.8.3 (2011-04-19)

- Код аутентификации автора сообщения показывается более корректно.

#### 3.8.2 (2011-04-19)

- В списке посылок для формы 311-П, помимо количества входящих документов,
показывается адресат (ФНС, ПФ, ФСС)

#### 3.8.1 (2011-04-19)

- Исправлено: излишняя прорисовка окна, лишний разделитель страницы при печати.

#### 3.8.0 (2011-04-19)

- Программу стало возможно запускать с сетевого диска (необходимые для этого
изменения в реестр вносятся автоматически).
- Кодировка кода изменена с windows-1251 на utf-8 (для нормального отображения
русских символов на google.code)

### 3.7

#### 3.7.1 (2010-12-16)

- Параметр `sign_delete_onsave` в ini-файле принимает теперь значения 0 или 1.
- Невозможно было вручную задать интервал дат в 12-м месяце.
- Архиватор 7-Zip обновлен до версии 9.20.

#### 3.7.0 (2010-10-17)

- В поле предпросмотра появилось контекстное меню для выгрузки отдельных
документов из посылки.
- Дополнительные настойки в ini файле.
- Проверка ручного ввода даты.
- Другие исправления.

### 3.6

#### 3.6.14 (2010-10-13)

- Наименования форм, входящих в SA-посылку, распознаются более корректно.
- Распознаются все формы Санкт-Петербургского и Нижегородского РЦИ.

#### 3.6.13 (2010-10-08)

- Выборка за заданный вручную интервал теперь обновляется при подтверждении
ввода даты клавишей `Enter` (ранее обновление происходило при потере фокуса
на любом из полей ввода).
- Изменен вид курсора в контекстном меню.

#### 3.6.12 (2010-09-08)

- Скриншот окна приложения заменен на более информационноемкий.

#### 3.6.11 (2010-09-06)

- Публикация приложения на google.code
- history.txt включен в readme.html.
- Изменен mime тип readme.html
- Упрощена процедура поиска и удаления ЭЦП.

#### 3.6.10

- Если содержимое 311-П не распознано, то кол-во документов в посылке не
показывается. Раньше при наличии в архиве нечитабельных посылок возникал сбой.

#### 3.6.9

- Даты, найденные в теле документа, подсвечиваются.

#### 3.6.8

- Bugfix

#### 3.6.7

- Количество файлов в ОЭС и ИЭС2 для формы 311-П отображается в списке.

#### 3.6.6

- Ранее содержимое SA посылки ИЭС2 формы 308-П не отображалось в списке.

#### 3.6.5

- В списке для решений 322-П показывается количество документов, входящих
в пакет.

#### 3.6.4

- В список добавлены иконки отправленной/принятой корреспонденции (для
наглядности).

#### 3.6.3

- При выборе радиобуттоном ручного периода происходил лишний рефреш списка.

#### 3.6.2

- Файлы, показываемые в окне быстрого просмотра, теперь проверяются не только
по расширению, но и по наличию в содержимом служебных символов, чтобы затем,
вместо нечитабельного содержимого, вывести `-содержимое скрыто-`.

#### 3.6.1

- При отсутствии соответствующего файла отчетности в `Store`, в панель
быстрого просмотра выводится предупреждение и совет отказаться от встроенного
архивирования.

#### 3.6.0

- Переписана процедура выполнения SQL запросов. Теперь она возвращает не текст,
а готовую таблицу.

### 3.5

#### 3.5.5

- Теперь до отправки квитанции и подтверждения, посылка ИЭС1 решения 322-П
имеет статус "не принят"
(флаг устанавливается в БД с помощью `PTK_PSD_Monitor` v2.2.2).
- При отправке квитанции и подтверждения, статус соответствующей входящей
посылки изменяется на "принят".

#### 3.5.4

- Вернулся на прежнюю версию 7-Zip, так как консольная не может
распаковывать `arj`

#### 3.5.3

- Номер к пояснительной записке к форме 212 (`Z745212.doc`, не упакованный
в `zip`) не отображался в списке SA посылок.
- Символ "Z" в имени файла не отображался.
- 7-Zip 9.07 beta пытался распаковывать `doc` файл (заменен на
версию 4.65 2009-02-03 для командной строки)

#### 3.5.2

- Исправлена ошибка, возникавшая при неверном выборе интервала дат.

### 3.4

#### 3.4.5

- Исправлена ошибка с форматом даты, в результате которой с 1 по 9 число
приложение выдавало ошибку.

#### 3.4.3

- C помощью *Дмитрия Евдокимова* (Санкт-Петербург):
- Отлажена работа обозревателя с MS SQL базами.
- Теперь вместо длинного перечня форм, доступных пользователю, достаточно
указать его имя.
- Корректно отображается КА для документов, подписанных Сигнатурой (раньше
работало только с Вербой).
- Куча других мелких исправлений.

### 3.2

#### 3.2.13

- Исправлены ошибочки, найденные пользователями.
- Так, например, раньше некоторые из SA посылок в списке отображались безлико
(как в ПТК ПСД) - было не видно, отчет по какой форме в них содержится.

#### 3.2.8

- Исправлена ошибка, найденная *SharkyVan*: "При выборе Периода
(например, "вчера" или "за три дня") нужно нажимать именно на радиобуттон,
если жмякнуть на надпись, то отбор не происходит, хотя точка перескакивает."

*[top]*

## v1

### 1.0.0

- С чего это все начиналось ??? (Автор программы - *Сергей Мозеров*, *mozers*)

*[top]*

[семантического версионирования]: http://semver.org/lang/ru/
[v5]: #v5
[v4]: #v4
[v3]: #v3
[v1]: #v1
[top]: #top
