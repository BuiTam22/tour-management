import express, { Express, Request, Response } from 'express';
import dotenv from "dotenv";
import sequelize from "./config/database";
import Tour from './models/tour.model';

dotenv.config();

sequelize;
const app: Express = express();
const port: number = 3000;


app.set("views", "./views");
app.set("view engine", "pug");

app.get('/', async (req: Request, res: Response) => {
    try {
        const tours = await Tour.findAll({
            raw: true
        });

        res.render("client/pages/tours/index",{
            tours: tours
        })
    } catch (error) {
        console.error("Error querying tours:", error);
        res.status(500).send("Internal Server Error");
    }
})

app.listen(port, () => {
    console.log(`App listening on port ${port}`);
})