import GenericModel from "@Application/repository/generic-model";
import Schema from "./schema";

const Model = {
  ...GenericModel(Schema),
};

export default Model;
