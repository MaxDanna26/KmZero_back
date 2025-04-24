import { db, DataTypes } from "@Application/database";
import Location from "../../location/model/schema";

const Store = db.define("store", {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  fk_location: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Location,
      key: "id",
    },
  },
});

export default Store;
