```
pq: syntax error: unimplemented at or near "hash"
DETAIL: source SQL:
CREATE INDEX TC_TXNID_INDEX ON TXN_COMPONENTS USING hash (TC_TXNID)
                                                    ^
HINT: This feature is not yet implemented in CockroachDB.
```

```
DEFFERED
```

```
USING btree
```

Must have secure cluster to use password