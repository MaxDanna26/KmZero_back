
import categoryRoutes from "./category/adapters/http";
import clientRoutes from "./client/adapters/http";
import locationRoutes from "./location/adapters/http";
import productRoutes from "./product/adapters/http";
import storeRoutes from "./store/adapters/http";

export const Routes = (app) => {
  categoryRoutes(app, "/category");
  clientRoutes(app, "/client");
  locationRoutes(app, "/location");
  productRoutes(app, "/product");
  storeRoutes(app, "/store");
};

