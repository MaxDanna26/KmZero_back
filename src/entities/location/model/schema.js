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


// UserEvent.associate = (models) => {
//   const { User, Event } = models;

//   if (!User || !Event) {
//     throw new Error("User or Event model is not defined");
//   }

//   User.belongsToMany(Event, {
//     through: UserEvent,
//     foreignKey: "fk_userId",
//     onDelete: "CASCADE",
//   });

//   Event.belongsToMany(User, {
//     through: UserEvent,
//     foreignKey: "fk_eventId",
//     onDelete: "CASCADE",
//   });

//   UserEvent.belongsTo(User, { foreignKey: "fk_userId" });
//   UserEvent.belongsTo(Event, { foreignKey: "fk_eventId" });
// };