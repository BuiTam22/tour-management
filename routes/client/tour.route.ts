import { Request, Response } from "express";
import { Router } from "express";
import Tour from "../../models/tour.model";

const router: Router = Router();

router.get("/", async (req: Request, res: Response) => {
    try {
        const tours = await Tour.findAll({
            raw: true
        });

        res.render("client/pages/tours/index", {
            tours: tours
        })
    } catch (error) {
        console.error("Error querying tours:", error);
        res.status(500).send("Internal Server Error");
    }
})

export const tourRoutes: Router = router;