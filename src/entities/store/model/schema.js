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

// Asociación
// Store.belongsTo(Location, { foreignKey: "fk_location", as: "location" });

// Store.associate = (models) => {
//   const { Location } = models;

//   if (!Location) {
//     throw new Error("Location model is not defined");
//   }

//   Store.belongsTo(Location, { foreignKey: "fk_location", as: "location" });

//   // User.belongsToMany(Event, {
//   //   through: UserEvent,
//   //   foreignKey: "fk_userId",
//   //   onDelete: "CASCADE",
//   // });

//   // Event.belongsToMany(User, {
//   //   through: UserEvent,
//   //   foreignKey: "fk_eventId",
//   //   onDelete: "CASCADE",
//   // });

//   // UserEvent.belongsTo(User, { foreignKey: "fk_userId" });
//   // UserEvent.belongsTo(Event, { foreignKey: "fk_eventId" });
// };


export default Store;
