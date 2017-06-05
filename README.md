# sharedb-mysql

MySQL database adapter for [sharedb](https://github.com/share/sharedb). This
driver can be used both as a snapshot store and op log.


## Usage

`sharedb-mysql` wraps [mysql](https://www.npmjs.com/package/mysql), and it supports the same configuration options.

To instantiate a sharedb-mysql wrapper, invoke the module and pass in your
MySQL configuration and other options as an argument. For example:

```js
const mysqlOptions = { db: {host: 'localhost', user: 'root', password: '', database: 'somedb'} };
var mySQLDB = require('sharedb-mysql')(mysqlOptions);
var backend = require('sharedb')({db: mySQLDB})
```

Can customise `ops` and `snapshots` table names, and add debug option like this:

```js
const mysqlOptions = { db: {host: 'localhost', user: 'root', password: '', database: 'somedb', connectionLimit: 20}, ops_table: 'ops_table_name', snapshots_table: 'snapshots_table_name', debug: true };
// connectionLimit [default=10], debug [default=false], ops_table[default=ops], snapshots[default=snapshots] are optional
```

## Error codes

MySQL errors are passed back directly.

## MIT License

Copyright (c) 2017 by Win Min Tun

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

