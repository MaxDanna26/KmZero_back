import { db, DataTypes } from "@Application/database";
import Store from "../../store/model/schema";
import Category from "../../category/model/schema";

const Product = db.define("product", {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  fk_store: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Store,
      key: "id",
    },
  },
  fk_category: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Category,
      key: "id",
    },
  },
});

// Asociaciones
Product.belongsTo(Store, { foreignKey: "fk_store", as: "store" });
Product.belongsTo(Category, { foreignKey: "fk_category", as: "category" });

export default Product;
