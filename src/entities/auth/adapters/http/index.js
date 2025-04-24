import express from "express";
import Controller from "../../controller";
import { asyncHandler } from "@Application/middlewares/error-handler";
// Para operaciones con acceso restringido, introduciremoUnable to conns un segundo parámetro que será la variable restrictedAccess
import restrictedAccess from "@Application/middlewares/restricted-access";

const authRouter = express.Router();

authRouter.post(
  "/login",
  asyncHandler(async (req, res) => {
    const { email, password } = req.body;
    const token = btoa(email + ":" + password);
    const userToken = await Controller.login(token);
    res.send(userToken);
  })
);

//export default authRouter
export default (app) => app.use("/auth", authRouter);
