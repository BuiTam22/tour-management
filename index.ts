import express, {Express, Request, Response} from 'express';
import dotenv from "dotenv";
import sequelize from "./config/database";
dotenv.config();
sequelize;
const app : Express = express();
const port: number = 3000;


app.set("views", "./views");
app.set("view engine", "pug");

app.get('/', async(req: Request, res: Response) =>{
    res.render('client/pages/tours/index.pug');
})

app.listen(port, () =>{
    console.log(`App listening on port ${port}`);
})