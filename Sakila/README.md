# CoreData Sakila

Model and data from
[CoreDataSakila.git](https://github.com/DirectToSwift/CoreDataSakila.git).

A Sakila database model for CoreData, also known as the DVD Rentals database.

Read about it over at MySQL:
[Sakila Sample Database](https://dev.mysql.com/doc/sakila/en/).

## Adjustments for CoreData

- `film.description` must be renamed because "description". 
   Now called `film.summary`.
- `specialFeatures` is an array, flattened to String using ","
- `create_date` is a SQL DATE (1973-01-31), not a timestamp/Date. Keeping it
  as one ...

## License

The original Sakila database is licensed under the New BSD license,
checkout
[Sakila License](https://dev.mysql.com/doc/sakila/en/sakila-license.html)
for the fine print.

## ER Diagram

<img src="https://www.jooq.org/img/sakila.png">

## Who

Brought to you by
[The Always Right Institute](http://www.alwaysrightinstitute.com)
and
[ZeeZide](http://zeezide.de).
We like
[feedback](https://twitter.com/ar_institute),
GitHub stars,
cool [contract work](http://zeezide.com/en/services/services.html),
presumably any form of praise you can think of.
