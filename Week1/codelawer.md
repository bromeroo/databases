- `show databases;`
- `use [database name]`
- `show tables`
- `select * from [table name]`
- `show columns from [table name]` === `describe [table name]`
- `SELECT * FROM [table name] WHERE [column name] = '***';`
- `SELECT COUNT(*) / SUM(column name) / AVG(column name) / MAX(column name) / MIN(column name) FROM [table name];`

**INNER JOIN ...ON (Multiple Tables)<br> 
`SELECT  [table name1].columnname, [table name2].columnname`<br> 
`FROM [table name1]`<br> 
`INNER JOIN [table name2]`<br> 
`ON [tablename1].columnname = [tablename2].columnname;`
