import { db, DataTypes } from "@Application/database";
import Location from "../../location/model/schema";

const Rol = db.define("rol", {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },

});

export default Rol;
