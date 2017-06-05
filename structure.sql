// Can customize table names in code
// FOR MYSQL VERSION NOT SUPPORTING JSON TYPE
CREATE TABLE ops (
  collection varchar(255) not null,
  doc_id varchar(255) not null,
  version int(11) not null,
  operation text not null, -- {v:0, create:{...}} or {v:n, op:[...]}
  PRIMARY KEY (collection, doc_id, version)
);

CREATE TABLE snapshots (
  collection varchar(255) not null,
  doc_id varchar(255) not null,
  doc_type varchar(255) not null,
  version int(11) not null,
  data text not null,
  PRIMARY KEY (collection, doc_id)
);

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
