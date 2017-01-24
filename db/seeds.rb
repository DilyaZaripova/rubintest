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
        {user_id: 1, image_id: 1, theme_id: 5, name: 'Гарри Поттер и узник Азкабана', author: 'Джоан Роулинг
', description: 'САМОЕ ИНТЕРЕСНОЕ ТОЛЬКО НАЧИНАЕТСЯ! Книга, покорившая мир, эталон литературы для читателей всех возрастов, синоним успеха. Книга, сделавшая Дж.К. Роулинг самым читаемым писателем современности. Книга, ставшая культовой уже для нескольких поколений. Гарри Поттер и узник Азкабана – история продолжается.', release: 2003 },
        {user_id: 2, image_id: 4, theme_id: 1, name: 'Зеленая миля', author: 'Стивен Кинг', description: 'Мир тюремного блока смертников, откуда не возвращаются. Приоткрытая дверь последнего пристанища тех, кто преступил не только человеческий, но и Божий закон…. Cамый жуткий из литературных опытов Стивена Кинга - история, которая начинается на Дороге Смерти и уходит в глубины человеческой души...', release: 1989 }
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
