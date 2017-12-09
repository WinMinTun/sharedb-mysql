// Can customize table names in code
// FOR MYSQL VERSION NOT SUPPORTING JSON TYPE
CREATE TABLE ops (
  collection varchar(255) not null,
  doc_id varchar(255) not null,
  version int(11) not null,
  operation text not null, -- {v:0, create:{...}} or {v:n, op:[...]}
  _ctime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, -- creation time
  PRIMARY KEY (collection, doc_id, version)
);

CREATE TABLE snapshots (
  collection varchar(255) not null,
  doc_id varchar(255) not null,
  doc_type varchar(255) not null,
  version int(11) not null,
  data text not null,
  _ctime datetime DEFAULT NULL, -- creation time
  _mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- last modified time
  PRIMARY KEY (collection, doc_id)
);

// SORRY! CURRENTLY NOT SUPPORTED
// FOR MYSQL VERSION SUPPORTING JSON TYPE ( >= MySQL 5.7.8)
CREATE TABLE ops (
  collection varchar(255) not null,
  doc_id varchar(255) not null,
  version int(11) not null,
  operation json not null, -- {v:0, create:{...}} or {v:n, op:[...]}
  PRIMARY KEY (collection, doc_id, version)
);

CREATE TABLE snapshots (
  collection varchar(255) not null,
  doc_id varchar(255) not null,
  doc_type varchar(255) not null,
  version int(11) not null,
  data json not null,
  PRIMARY KEY (collection, doc_id)
);
