Ticket.delete_all
Ticket.reset_pk_sequence
Ticket.create(
    [
        {user_id: 1, seance_id: 1, status_id: 1, number: 34}
    ]
)

Status.delete_all
Status.reset_pk_sequence
Status.create(
    [
        {name: 'Забронирован'},
        {name: 'Куплен'}
    ]
)

Seance.delete_all
Seance.reset_pk_sequence
Seance.create(
    [
        {hall_id: 1, movie_id: 3, datetime: '--', price: 300}
    ]
)

Hall.delete_all
Hall.reset_pk_sequence
Hall.create(
    [
        {name: '3D'}
    ]
)

Movie.delete_all
Movie.reset_pk_sequence
Movie.create(
    [
        {name: 'Рассвет мертвецов', genre: 'Ужасы', director: 'John Walles', description: 'В г. К. обнаружилось заражение...'}
    ]
)

Image.delete_all
Image.reset_pk_sequence
Image.create(
    [
        {name: 'Первый', file: '1.jpg', theme_id: 2},
        {name: 'Второй', file: '2.jpg', theme_id: 2}
    ]
)

Theme.delete_all
Theme.reset_pk_sequence
Theme.create(
    [
        {name: '-----'},
        {name: 'Тема'}
    ]
)