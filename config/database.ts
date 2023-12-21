import { Sequelize } from "sequelize";
import dotenv from "dotenv";
import { error } from "console";

dotenv.config();

const sequelize = new Sequelize(
    process.env.DATABASE_NAME,
    process.env.DATABASE_USERNAME,
    process.env.DATABASE_PASSWORD,
    {
        host: process.env.DATABASE_HOST,
        dialect: "mssql",
        dialectOptions: {
            options: {
                encrypt: false, 
            },
        },
    }
);

sequelize
    .authenticate()
    .then(() => {
        console.log("Connect Success");
    })
    .catch((err) => {
        console.error("Connect False", err.message);
    });

export default sequelize;
