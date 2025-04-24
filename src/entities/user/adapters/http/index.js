import express from "express";
import Controller from "../../controller";
import { asyncHandler } from "@Application/middlewares/error-handler";
import bcrypt from 'bcryptjs';

// Para operaciones con acceso restringido, introduciremos un segundo parámetro que será la variable restrictedAccess
import restrictedAccess from "@Application/middlewares/restricted-access";
import { Console } from "console";

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
    const {
      body: { email, userName, password }, } = req;

    if (!email || !userName || !password)
      return res.status(400).json({ error: "Datos incompletos!" });

    const saltRounds = Math.floor(Math.random() * (11 - 6 + 1)) + 6; // numero de iteraciones en que se va a encriptar la password

    // Encriptar la contraseña con bcrypt
    const hashedPassword = await bcrypt.hash(password, saltRounds);

    await Controller.create({
      email: email,
      userName: userName,
      password: hashedPassword,
    });
    res.send("Usuario creado con éxito!!");
  })
);

export default (app, entityUrl) => app.use(entityUrl, router);  
