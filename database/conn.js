import pg  from 'pg-promise';
const pgp = pg();

import dotenv  from "dotenv";
dotenv.config();

const user = process.env.USER;
const pass = process.env.PASS;
const host = process.env.HOST;
const database = process.env.DB;

const cn = `postgresql://${user}:${pass}@${host}:5432/${database}?ssl=true`;

const cn2 =`postgres://davidvidea1:UCzdBnYyxEIbRRTNB4Ts3YYgJwbL6flH@dpg-cld6vmeg1b2c73f4mf5g-a.oregon-postgres.render.com/davidvidea1`

const db = pgp(cn);
db.connect()
    .then(
        ()=>{

            console.log("Conexion Exitosa de Postgres");
        }
    )
    .catch( (err)=>{

        console.log(`Error de Conexion ${err}`);

    } );

export {db};