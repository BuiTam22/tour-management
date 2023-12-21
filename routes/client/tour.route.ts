import { Request, Response } from "express";
import { Router } from "express";
import Tour from "../../models/tour.model";
import * as controller from "../../controllers/client/tour.controller";
const router: Router = Router();

router.get("/", controller.index);

export const tourRoutes: Router = router;