
import categoryRoutes from "./category/adapters/http";
import locationRoutes from "./location/adapters/http";
import productRoutes from "./product/adapters/http";
import storeRoutes from "./store/adapters/http";
import userRoutes from "./user/adapters/http"
import authRoutes from "./auth/adapters/http"
import rolRoutes from "./rol/adapters/http"
import paymentRoutes from "../application/config/payment"

export const Routes = (app) => {
  categoryRoutes(app, "/category");
  locationRoutes(app, "/location");
  productRoutes(app, "/product");
  storeRoutes(app, "/store");
  userRoutes(app, "/user");
  authRoutes(app, "/auth");
  paymentRoutes(app, "/payment");
  rolRoutes(app, "/rol");
};

