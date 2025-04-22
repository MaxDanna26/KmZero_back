import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import UserModel from "../../user/model";
import dotenv from "dotenv";

dotenv.config();

const AuthService = () => ({
    async signIn(token) {
        // Decodificar Base64
        const decoded = atob(token);
        console.log("Decodificado:", decoded); // Salida: "paco:123"

        // Separar el usuario y la contraseña
        const [email, password] = decoded.split(":");

        // Buscar el usuario en la base de datos
        const user = await UserModel.getByEmail(email);

        if (!user) {
            throw new Error("Usuario no encontrado");
        }

        // Comparar la contraseña ingresada con la almacenada en la BBDD
        const isMatch = await bcrypt.compare(password, user.password);
        if (!isMatch) {
            throw new Error("Contraseña incorrecta");
        }

        // Generar token JWT
        const JWToken = jwt.sign(
            {
                id: user.id,
                email: user.email,
                userName: user.userName
            },
            process.env.JWT_SECRET,
            { expiresIn: "2h" }
        );
        return { 'token': JWToken };
    },

    async deleteUser(userId) {
        return UserModel.destroy({ where: { id: userId } });
    },
});

export default AuthService;
