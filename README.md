# Library for Codica
Есть библиотека, и у каждой книги может быть несколько авторов. Книги также
могут иметь картинку.

Необходимо разработать систему управления библиотекой, чтобы можно было
каталогизировать книги. Книги необходимо иметь возможность объединять в
группы (например “Книги по менеджменту”, “Фантастика”).

Задача:
  * Сделать админку с аутентификацией через логин-пароль:
    
     ○ Управление авторами
      
       ■ Отображать список книг, которые написал каждый автор
        при просмотре его профиля

     ○ Управление книгами
      
       ■ Каждая книга должна иметь обложку
       
       ■ Реализовать возможность добавления / удаления авторов
        из книг
     ○ Управление группами
      
       ■ Реализовать возможность добавления / удаления книг из
        групп

     ○ Управление администраторами
     
     ■ Сделать возможность назначения прав по управлению
      книгами и группами отдельно.

  * Сделать публичную часть и отобразить книги, разделенные на группы.
  * Для реализации админки можно использовать ActiveAdmin, можно и
  написать самостоятельно.
  * Использовать Bootstrap для верстки.
  * Картинки хранить на S3 или Cloudenery.
