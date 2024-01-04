import { Request, Response } from "express";
// import Tour from "../../models/tour.model";
import sequelize from "../../config/database";
import { QueryTypes } from "sequelize";


// [GET] /tours/:slugCategory
export const index = async (req: Request, res: Response) => {

    const slugCategory = req.params.slugCategory;

    // đối với những câu lệnh không cần phải bảo mật thì dùng sql thuần
    // đôi khi dùng sequelize phức tạp hơn cả sql
    const tours = await sequelize.query(`
        SELECT tours.*
        FROM tours
        JOIN tours_categories ON tours.id = tours_categories.tour_id
        JOIN categories ON tours_categories.category_id = categories.id
        where 
            categories.slug = '${slugCategory}'
            AND categories.deleted = 0
            AND categories.status = 'active'
            AND tours.deleted = 0
            AND tours.status = 'active'
    `,{
        // trành bị mảng lồng khi trả về kết quả
        type: QueryTypes.SELECT
    })
 
    tours.forEach(tour =>{
        if(tour["images"]){
            const images = JSON.parse(tour["images"]);
            tour["image"] = images[0];
        }
        tour["price_special"] = tour["price"] * (1 - (tour["discount"]/100))
    })
    res.render("client/pages/tours/index", {
        pageTitle: "Danh sách tour",
        tours: tours
    });
}