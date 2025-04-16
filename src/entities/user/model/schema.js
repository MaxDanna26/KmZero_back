import { db, DataTypes } from "@Application/database";
// import User_Event from "entities/userevent/model/schema";

const User = db.define("user", {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  userName: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  }
}, {
  timestamps: true,
  tableName: "users",
});

// User.belongsToMany(Event, { through: 'userevents', foreignKey: "fk_idUser", onDelete: "CASCADE" });

// User.associate = ({ event }) => {
//   User.belongsToMany(event, { through: 'userevents', onDelete: 'cascade' });
// };

// User.belongsToMany(Event, { through: UserEvent, foreignKey: "fk_idUser", onDelete: "CASCADE" });


export default User;
