import express from "express";
import Controller from "../../controller";
import { asyncHandler } from "@Application/middlewares/error-handler";
// Para operaciones con acceso restringido, introduciremos un segundo parámetro que será la variable restrictedAccess
import restrictedAccess from "@Application/middlewares/restricted-access";
import { upload } from '@Application/config/multer';

const router = express.Router();

router.get(
  "/",
  asyncHandler(async (req, res) => {
    const data = await Controller.get();
    res.send(data);
  })
);

router.post(
  "/",
  upload.single("file"),
  asyncHandler(async (req, res) => {
    const {
      body: { name, fk_store, fk_category },
      file
    } = req;
    await Controller.create({ name, fk_store, fk_category, image: file?.filename, });
    res.send("Product creado con éxito!!");
  })
);

export default (app, entityUrl) => app.use(entityUrl, router);
