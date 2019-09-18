// Database Config

#if canImport(PostgreSQLAdaptor)
  import PostgreSQLAdaptor

  /**
   * PostgreSQL is recommended due to its rich SQL catalog which allows D2S to
   * derive a neat ORM model.
   *
   * ZeeQL provides three PostgreSQL adaptors:
   * - [ZeeQL3PCK](https://github.com/ZeeQL/ZeeQL3PCK),
   *   uses [PostgresClientKit](https://github.com/codewinsdotcom/PostgresClientKit),
   *   which doesn't require any additional installs, but is a little limited
   *   performance wise.
   * - [ZeeQL3PG](https://github.com/ZeeQL/ZeeQL3PG), based on libpq - fast
   *   and reliable, but requires a libpq install,
   * - [ZeeQL3Apache](https://github.com/ZeeQL/ZeeQL3Apache]), mod_db based
   *   drivers.
   *
   * It is recommended to go with
   * [ZeeQL3PCK](https://github.com/ZeeQL/ZeeQL3PCK)
   * first. Runs on everything, easy to setup.
   *
   * Checkout the project README on how to setup the `dvdrental` database in
   * PostgreSQL. It is easy.
   */
  let adaptor = PostgreSQLAdaptor(database: "dvdrental")

#else // use SQLite3

  import ZeeQL

  /**
   * The SQLite3 adaptor is builtin to ZeeQL, not extra package or install
   * required.
   *
   * But you still need to provide the Sakila DB, e.g. it can be found over
   * here:
   * [jOOQ-examples](https://github.com/jOOQ/jOOQ/tree/master/jOOQ-examples/Sakila/sqlite-sakila-db)
   *
   * To create it:
   *
   *    export T="/tmp"
   *    export B="https://raw.githubusercontent.com/jOOQ/jOOQ/master"
   *    export C="$B/jOOQ-examples/Sakila/sqlite-sakila-db"
   *    curl -o $T/sqlite-sakila-schema.sql      $C/sqlite-sakila-schema.sql
   *    wget -o $T/sqlite-sakila-insert-data.sql $C/sqlite-sakila-insert-data.sql
   *    sqlite3 $T/dvdrental.sqlite3 < $T/sqlite-sakila-schema.sql
   *    sqlite3 $T/dvdrental.sqlite3 < $T/sqlite-sakila-insert-data.sql
   *
   */
  let adaptor : Adaptor = {
      let dbPath = "/tmp/dvdrental.sqlite3"
      return SQLite3Adaptor(dbpath)
  }()

#endif

