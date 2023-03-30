const {Client} = require('pg');
const client = new Client({
    user: 'postgres'
    host: 'localhost'
    database: 'postgres'
    password: 'password'
    port: 5432,
})

client.connect()
.then(() => console.log('connected'))
.then(() => client.query('INSERT * FROM games'))
.then(() => client.query('SELECT * FROM game'))
.cath(err => console.log(err))
.finally(() => client.end())
