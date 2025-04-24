import express from "express";
import Controller from "../../controller";
import { asyncHandler } from "@Application/middlewares/error-handler";
// Para operaciones con acceso restringido, introduciremos un segundo parámetro que será la variable restrictedAccess
import restrictedAccess from "@Application/middlewares/restricted-access";

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
  asyncHandler(async (req, res) => {
    const { body: { name }, } = req;
    if (!name)
      return res.status(400).json({ error: "Datos incompletos!" })

    await Controller.create({ name });
    res.send("Location creado con éxito!");
  })
);

export default (app, entityUrl) => app.use(entityUrl, router);
