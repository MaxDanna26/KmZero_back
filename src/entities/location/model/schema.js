import { db, DataTypes } from "@Application/database";

const Location = db.define("location", {
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

Location.associate = ({ store }) => {
  if (!store) {
    throw new Error("Store model is not defined");
  }
  Location.hasMany(store, { foreignKey: "fk_location", as: "stores" });

};
export default Location;