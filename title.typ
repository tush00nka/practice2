// Титульный лист по образцу с сайта ГУАП для:
// Институты 1–4, институт ФПТИ, факультет 6, ВУЦ при ГУАП, ФДПО
#let title-page(
    department: "41",
    teacher-position: "старший преподаватель",
    teacher-name: "Иванов И.И.",
    number: 1,
    title: "Название работы",
    course: "Название курса",
    group: "4318",
    student-name: "Борисоглебский А.Д.",
    year: 2025,
) = {
    set text(12pt)

    align(center)[
        ГУАП

        #v(20pt)

        КАФЕДРА № #department
    ]

    v(50pt)

    [ 
        ОТЧЕТ \
        ЗАЩИЩЕН С ОЦЕНКОЙ \
        ПРЕПОДАВАТЕЛЬ
    ]

    set table.hline(stroke: 0.6pt)

    show table.cell.where(y: 1): set text(size: 10pt)
    table(
        columns: (35%, 3%, 30%, 3%, 30%),

        align: center,
        stroke: none,
        [#teacher-position], [], [], [], [#teacher-name],
        table.hline(start: 0, end: 1),
        table.hline(start: 2, end: 3),
        table.hline(start: 4, end: 5),
        [должность, уч. степень, звание], [], [подпись, дата], [], [инициалы, фамилия],
    )

    v(50pt)

    block()[
        #align(center, upper(text(size: 14pt)[
            ОТЧЕТ О ЛАБОРАТОРНОЙ РАБОТЕ № #number
            #v(5fr)
            // \u{00AB}#title\u{00BB}
            #title
        ]))

        #v(5fr)

        #align(center, [по курсу:])
        #align(center, upper(text(size: 14pt)[
            // \u{00AB}#course\u{00BB}
            #course
        ]))

        #v(10fr)

        РАБОТУ ВЫПОЛНИЛ

        #show table.cell.where(y: 1): set text(size: 10pt)
        #table(
            columns: (20%, 14%, 3%, 30%, 3%, 30%),

            align: (left, center, center, center, center, center),
            stroke: none,
            [#h(-5pt)СТУДЕНТ гр. №], [#group], [], [], [], [#student-name],
            table.hline(start: 1, end: 2),
            table.hline(start: 3, end: 4),
            table.hline(start: 5, end: 6),
            [], [], [], [подпись, дата], [], [инициалы, фамилия],
        )

        #v(25pt)

        #align(center, [Санкт-Петербург #year])
    ]
}
