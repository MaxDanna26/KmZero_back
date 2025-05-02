import express from "express";
import Controller from "../../controller";
import { asyncHandler } from "@Application/middlewares/error-handler";
import restrictedAccess from "@Application/middlewares/restricted-access";
import { upload } from '@Application/config/multer';
import cloudinary from "../../../../application/config/cloudinary";
import fs from "fs";
import Product from "entities/product/model/schema";

const router = express.Router();

router.get(
  "/",
  asyncHandler(async (req, res) => {
    const data = await Controller.get();
    res.send(data);
  })
);

router.get(
  "/:id",
  asyncHandler(async (req, res) => {
    const { id } = req.params;
    const data = await Controller.getById(id);
    if (!data) {
      return res.status(404).json({ error: "Producto no encontrado" });
    }
    res.send(data);
  })
);

router.get(
  "/ProductByCategory/:CategoryId",
  asyncHandler(async (req, res) => {
    const { CategoryId } = req.params;
    console.log(CategoryId)
    const data = await Controller.get({ fk_category: CategoryId });
    if (!data) {
      return res.status(404).json({ error: "Producto no encontrado" });
    }
    res.send(data);
  })
);

router.post(
  "/",
  upload.single("file"),
  asyncHandler(async (req, res) => {
    const {
      body: { name, fk_store, fk_category, price, description },
      file,
    } = req;

    if (!name || !fk_store || !fk_category || !price || !description)
      return res.status(400).json({ error: "Datos incompletos!" });

    if (!file) {
      return res.status(400).json({ error: "Falta el archivo de imagen" });
    }

    // Subir imagen a Cloudinary
    const result = await cloudinary.uploader.upload(file.path);

    // Borrar imagen temporal del servidor
    fs.unlinkSync(file.path);

    // Guardar producto en la base de datos con la URL de Cloudinary
    await Controller.create({
      name,
      fk_store,
      fk_category,
      price,
      description,
      image: result.secure_url, // Guardamos la URL en lugar del filename
    });

    res.send("¡Producto creado con éxito!");
  })
);

export default (app, entityUrl) => app.use(entityUrl, router);
