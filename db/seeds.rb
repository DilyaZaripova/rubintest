User.delete_all
User.reset_pk_sequence
User.create!(
    [
        {name: 'Ivan', surname: 'Ivanov', email: 'ivan_ivanov@mail.ru', password: 'ivanivan'},
        {name: 'Anna', surname: 'Selezneva', email: 'anna_sel@bk.ru', password: 'annaanna'},
        {name: 'Валерий', surname: 'Глушко', email: 'valeriy@gmail.com', password: 'valeriy'}
    ]
)

Image.delete_all
Image.reset_pk_sequence
Image.create!(
    [
        {name: 'Гарри Поттер и узник Азкабана', file: '0.jpg', theme_id: 5},
        {name: 'Зеленая миля', file: '1.jpg', theme_id: 4},
        {name: 'Унесенные ветром', file: '2.jpg', theme_id: 1},
        {name: 'Буря мечей', file: '3.jpg', theme_id: 5},
        {name: 'А зори здесь тихие', file: '4.jpg', theme_id: 2},
        {name: 'Крестный отец', file: '5.jpg', theme_id: 3},
        {name: 'Властелин колец', file: '6.jpg', theme_id: 5},
        {name: 'Цветы для Элджерона', file: '7.jpg', theme_id: 4},
        {name: 'Прислуга', file: '8.jpg', theme_id: 4},
        {name: 'Убить пересмешника', file: '9.jpg', theme_id: 2},
        {name: 'Мастер и Маргарита', file: '10.jpg', theme_id: 1},
        {name: 'Десять негритят', file: '11.jpg', theme_id: 3},
        {name: 'Денискины рассказы', file: '12.jpg', theme_id: 5},
        {name: 'Три товарища', file: '13.jpg', theme_id: 1},
        {name: 'Дары волхвов', file: '14.jpg', theme_id: 1}
    ]
)

Theme.delete_all
Theme.reset_pk_sequence
Theme.create!(
    [
        {name: 'Роман'},
        {name: 'Художественная литература'},
        {name: 'Детектив'},
        {name: 'Драма'},
        {name: 'Приключения'}
    ]
)

Value.delete_all
Value.reset_pk_sequence
Value.create!(
    [
        {user_id: 1, image_id: 3, value: 3},
        {user_id: 2, image_id: 7, value: 5},
        {user_id: 2, image_id: 5, value: 4},
        {user_id: 3, image_id: 1, value: 5},
        {user_id: 3, image_id: 9, value: 2}
    ]
)

Book.delete_all
Book.reset_pk_sequence
Book.create!(
    [
        {user_id: 1, image_id: 1, theme_id: 5, name: 'Гарри Поттер и узник Азкабана', author: 'Джоан Роулинг', description: 'САМОЕ ИНТЕРЕСНОЕ ТОЛЬКО НАЧИНАЕТСЯ! Книга, покорившая мир, эталон литературы для читателей всех возрастов, синоним успеха. Книга, сделавшая Дж.К. Роулинг самым читаемым писателем современности. Книга, ставшая культовой уже для нескольких поколений. Гарри Поттер и узник Азкабана – история продолжается.', release: 2003 },
        {user_id: 1, image_id: 2, theme_id: 4, name: 'Зеленая миля', author: 'Стивен Кинг', description: 'Мир тюремного блока смертников, откуда не возвращаются. Приоткрытая дверь последнего пристанища тех, кто преступил не только человеческий, но и Божий закон…. Cамый жуткий из литературных опытов Стивена Кинга - история, которая начинается на Дороге Смерти и уходит в глубины человеческой души...', release: 1989 },
        {user_id: 1, image_id: 3, theme_id: 1, name: 'Унесенные ветром', author: 'Маргарет Митчелл', description: 'Великая сага о Гражданской войне в США и о судьбе своенравной и готовой идти по головам Скарлетт О’Хара была впервые опубликована более 70 лет назад и не устаревает по сей день. «Унесенные ветром» — единственный роман Маргарет Митчелл (1900—1949), за который она — писательница, эмансипе и защитница прав женщин — получила Пулитцеровскую премию. История о женщине, на которую не стыдно равняться ни безусловной феминистке, ни убежденной стороннице домостроя; роман о том, что любовь к жизни бывает важнее любви; о том, что заставляет нас жить и бороться — что бы ни творилось вокруг.', release: 1945 },
        {user_id: 1, image_id: 4, theme_id: 5, name: 'Буря мечей', author: 'Джордж Мартин', description: 'Перед вами — третья летопись цикла "Песнь льда и огня". Эпическая, чеканная сага о мире Семи Королевств. О мире суровых земель вечного холода и радостных земель вечного лета. Мире лордов и героев, воинов и магов, чернокнижников и убийц — всех, кого свела воедино Судьба во исполнение древнего пророчества. О мире опасных приключений, великих деяний и тончайших политических интриг. Сотрясается в борьбе Железный Трон Семи Королевств. Предают друг друга недавние союзники, злейшими врагами становятся добрые друзья. В неприступном замке плетет сети изощренного заговора могущественная чернокнижница... В далеких, холодных землях собирает силы юный властитель Севера Робб от Дома Старк... Новые и новые воины сходятся под знаменами Даэнерис Бурерожденной, правящей последними из оставшихся в мире драконов... Но ныне в разгорающийся пожар сражений вступают еще и Иные — армия живых мертвецов, коих не остановить ни властью оружия, ни властью магии. БУРЯ МЕЧЕЙ грядет в Семи Королевствах — и многие падут в этой буре...', release: 1955 },
        {user_id: 1, image_id: 5, theme_id: 2, name: 'А зори здесь тихие', author: 'Борис Васильев', description: 'Рита – строгая и упорная, верит, что добро побеждает зло. Женя – признанная красавица, задорная, веселая и улыбчивая. Галя – выдумщица и фантазерка, мечтает стать актрисой. Соня – рассеянная и вдумчивая, обожает театр и любит читать. Лиза – домовитая, спокойная и собранная. Пять совсем еще молодых девушек-зенитчиц под руководством старшины Васкова – по их меркам, тридцатидвухлетнего старика, – вступили в неравный бой с отрядом хорошо подготовленных немецких диверсантов. …И победили.', release: 1972 },
        {user_id: 2, image_id: 6, theme_id: 3, name: 'Крестный отец', author: 'Марио Пьюзо', description: '«Крестный отец» - классический роман о жизни одного из могущественных преступных синдикатов Америки - мафиозного клана дона Корлеоне. Написанный с потрясающей достоверностью, он позволяет читателю без риска для жизни заглянуть в святая святых мафии. Роман Пьюзо лег в основу знаменитого фильма, снятого Фрэнсисом Фордом Копполой. Эта картина получила девятнадцать различных наград и по праву считается одной из лучших в мировом кинематографе.', release: 1972 },
        {user_id: 2, image_id: 7, theme_id: 5, name: 'Властелин колец', author: 'Джон Роналд Руэл Толкиен', description: 'Джон Рональд Руэл Толкин (3.01.1892 – 2.09.1973) – писатель, поэт, филолог, профессор Оксфордского университета, родоначальник современной фэнтези. В 1937 году был написан «Хоббит», а в середине 1950-х годов увидели свет три книги «Властелина колец», повествующие о Средиземье – мире, населенном представителями волшебных рас со сложной культурой, историей и мифологией. Существует свыше десятка переводов трилогии на русский язык. В данное издание вошел перевод В. Каррика, М. Каменкович.', release: 1989 },
        {user_id: 2, image_id: 8, theme_id: 4, name: 'Цветы для Элджерона', author: 'Дэниел Киз', description: '«Цветы для Элджернона» Дэниела Киза входят в программу обязательного чтения в американских школах. Эта единственная история в жанре научной фантастики, автор которой был дважды награжден сначала за рассказ, а потом за роман с одним и тем же названием, героем, сюжетом. Тридцатитрехлетний Чарли Гордон – умственно отсталый. При этом у него есть работа, друзья и непреодолимое желание учиться. Он соглашается принять участие в опасном научном эксперименте в надежде стать умным… Эта фантастическая история обладает поразительной психологической силой и заставляет задуматься над общечеловеческими вопросами нравственности: имеем ли мы право ставить друг над другом эксперименты, к каким результатам это может привести и какую цену мы готовы заплатить за то, чтобы стать «самым умным». А одиноким? На вопросы, которые поднимали еще М. Булгаков в «Собачьем сердце» и Дж. Лондон в «Мартине Идене», Дэниел Киз дает свой однозначный ответ.', release: 1958 },
        {user_id: 2, image_id: 9, theme_id: 4, name: 'Прислуга', author: 'Кэтрин Стокетт', description: 'Американский Юг, на дворе 1960-е годы. Скитер только-только закончила университет и возвращается домой, в сонный городок Джексон, где никогда ничего не происходит. Она мечтает стать писательницей, вырваться в большой мир. Но приличной девушке с Юга не пристало тешиться столь глупыми иллюзиями, приличной девушке следует выйти замуж и хлопотать по дому. Мудрая Эйбилин на тридцать лет старше Скитер, она прислуживает в домах белых всю свою жизнь, вынянчила семнадцать детей и давно уже ничего не ждет от жизни, ибо сердце ее разбито после смерти единственного сына. Минни - самая лучшая стряпуха во всем Джексоне, а еще она самая дерзкая служанка в городе. И острый язык не раз уже сослужил ей плохую службу. На одном месте Минни никогда подолгу не задерживается. Но с Минни лучше не связываться даже самым высокомерным белым дамочкам. Двух черных служанок и белую неопытную девушку объединяет одно - обостренное чувство справедливости и желание хоть как-то изменить порядок вещей. Смогут ли эти трое противостоять целому миру? Сумеют ли они выжить в этой борьбе?', release: 2009 },
        {user_id: 2, image_id: 10, theme_id: 2, name: 'Убить пересмешника', author: 'Харпер Ли', description: 'История маленького сонного городка на юге Америки, поведанная маленькой девочкой. История ее брата Джима, друга Дилла и ее отца – честного, принципиального адвоката Аттикуса Финча, одного из последних и лучших представителей старой «южной аристократии». История судебного процесса по делу чернокожего парня, обвиненного в насилии над белой девушкой. Но прежде всего – история переломной эпохи, когда ксенофобия, расизм, нетерпимость и ханжество, присущие американскому югу, постепенно уходят в прошлое. «Ветер перемен» только-только повеял над Америкой. Что он принесет?..', release: 1960 },
        {user_id: 3, image_id: 11, theme_id: 1, name: 'Мастер и Маргарита', author: 'Михаил Булгаков', description: 'Бестселлер Мастер и Маргарита Михаил Булгаков 4.545 62714 749  рецензий 1566  цитат "Мастер и Маргарита" - блистательный шедевр, созданный Михаилом Булгаковым, завораживающая мистическая дьяволиада, обнажающая вечные темы: истинной любви и верности, добра и зла, смерти и бессмертия. Эта история вечна, как и сама любовь! Великий и вечный роман писателя претерпел многочисленные запреты к изданию и гонения, не хуже чем судьба романа о Понтии Пилате самого Мастера. Впервые был издан в 1966 году с купюрами в журнальном варианте, а полный текст романа был опубликован только в 80-е годы ХХ века. До официальной публикации распространялся в перепечатанных вручную копиях и сразу приобрел невероятную популярность и любовь читателя. Феерическая сатира на быт и нравы Москвы 30-х годов, одновременно пронзительная история любви Мастера и Маргариты и вечная библейская тема борьбы добра со злом, роман о Понтии Пилате внутри романа - таковы далеко не все пласты этого гениального произведения Михаила Булгакова.', release: 1937 },
        {user_id: 3, image_id: 12, theme_id: 3, name: 'Десять негритят', author: 'Агата Кристи', description: 'Десять никак не связанных между собой людей в особняке на уединенном острове... Кто вызвал их сюда таинственным приглашением? Зачем кто-то убивает их, одного за другим, самыми невероятными способами? Почему все происходящее так тесно переплетено с веселым детским стишком?', release: 1967 },
        {user_id: 3, image_id: 13, theme_id: 5, name: 'Денискины рассказы', author: 'Виктор Драгунский', description: 'Знаменитые "Денискины рассказы" Виктора Драгунского переиздаются давно и с неизменным успехом. Не одно поколение ребят выросло на весёлых, жизнерадостных рассказах Дениски Кораблёва. Они давно стали любимым чтением ребят младшего и среднего школьного возраста. Рассказы входят в школьную программу по литературе. Для среднего школьного возраста.', release: 1925 },
        {user_id: 3, image_id: 14, theme_id: 1, name: 'Три товарища', author: 'Эрих Мария Ремарк', description: 'Самый красивый в ХХ столетии роман о любви... Самый увлекательный в ХХ столетии роман о дружбе... Самый трагический и пронзительный роман о человеческих отношениях за всю историю ХХ столетия.', release: 1933 },
        {user_id: 3, image_id: 15, theme_id: 1, name: 'Дары волхвов', author: 'О. Генри', description: 'Банковский служащий Уильям Сидни Портер провел три года в тюрьме за растрату банковских средств, где, вдохновившись историями сокамерников, и написал свой первый рассказ под псевдонимом О. Генри, вскоре принесшим ему славу. Каждая новелла неисправимого романтика и самого блестящего рассказчика Америки - это меткий юмор, хлесткие диалоги и непредсказуемая развязка. В книге – лучшие рассказы О. Генри.', release: 1906 }
    ]
)


Review.delete_all
Review.reset_pk_sequence
Review.create!(
    [
        {user_id: 1, book_id: 2, text: '"Тихий Дон" одно из самых больших и самых интересных произведений русской литературы .Автор очень подробно рассказывает нам о суровой жизни казаков, для которых честь и семья - самое главное в жизни.
Есть схожести с не менее великим произведением Н.В. Гоголя "Тарас Бульба". Книга ,конечно, большая и перемещаться с ней будет не удобно, но мне , как человеку который читает дома, нравятся большие книги, это придает им свою, особенную "изюминку" , ведь гораздо солиднее на книжной полке выглядит книга таких размеров, чем маленькие покетбуки.'},
        {user_id: 2, book_id: 2, text:'"Тихий Дон" - это грандиозный роман, принесший ее автору - русскому писателю Михаилу Шолохову - мировую известность и звание лауреата Нобелевской премии; это масштабная эпопея, повествующая о трагических событиях в истории России, о человеческих судьбах, искалеченных братоубийственной бойней, о любви, прошедшей все испытания. Трудно найти в русской литературе произведение, равное "Тихому Дону" по уровню осмысления действительности и свободе повествования.'}
    ]
)
