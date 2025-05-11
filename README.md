# 🛠️ Backend API - Gestión de la tienda Km Zero:

Este proyecto es un backend desarrollado para gestionar diferentes entidades de una plataforma, incluyendo usuarios, autenticación, productos, tiendas y más. La API está documentada con Swagger/OpenAPI y permite operaciones básicas como creación y listado de registros.

## 📦 Entidades principales

- `auth` – Autenticación de usuarios.
- `user` – Gestión de usuarios.
- `product` – Productos, con posibilidad de subida de imágenes.
- `category` – Categorías de productos.
- `rol` – Roles asignables a los usuarios.
- `store` – Tiendas físicas o virtuales.
- `location` – Ubicaciones geográficas asociadas a tiendas.

## 📚 Endpoints disponibles

Para cada entidad existe:

- `GET /entidad/` → Listado de todos los registros.
- `POST /entidad/` → Creación de un nuevo registro.

Por ejemplo:

- `GET /user/` → Obtiene todos los usuarios.
- `POST /product/` → Crea un producto (admite subida de imagen con `multipart/form-data`).

## 🧪 Subida de imagen en `/product/`

Para subir una imagen al crear un producto, debes usar una solicitud `multipart/form-data` con los siguientes campos:

- `name` (string)
- `price` (number)
- `category_id` (integer)
- `image` (file – formato `.png`, `.jpg`, etc.)

## .ENV 

1. Crearemos el fichero .env a partir del fichero .env.example
2. En el fichero /entitis/user/adapters/http/index.js pondremos las rutas a las que accederemos. Tienes ejemplos de muchas peticiones en /entities/user/index.js

## HTTP SAMPLES

```js
// GET BY ID
router.get(
  "/:id",
  asyncHandler(async (req, res) => {
    const {
      query: { id },
    } = req;
    const data = await Controller.getById(id);
    res.send(data);
  })
);

// CREATE
router.post(
  "/",
  asyncHandler(async (req, res) => {
    const {
      body: { email, username, password },
    } = req;
    await Controller.create({ email, username, password });
    res.send("Usuario creado con éxito");
  })
);

// DELETE
router.delete(
  "/:id",
  asyncHandler(async (req, res) => {
    const {
      params: { id },
    } = req;
    await Controller.deleteById(id);
    res.send(`User id: ${id} deleted`);
  })
);

// TOTAL UPDATE
router.put("/:id", async (req, res) => {
  const {
    params: { id },
    body,
  } = req;
  await Controller.updateById(id, body);
  res.send(`User id: ${id} updated`);
});
```

## Tecnologías utilizadas:

- Node.js / Express

- Swagger para documentación

- Middleware Multer para subida de archivos

- JSON como formato principal de intercambio

- Soporte para multipart/form-data

# Instalar dependencias
npm install

# Ejecutar el servidor (modo desarrollo)
npm run dev

## DOCUMENTATION

http://localhost:3000/docs/

##  Contacto
Si tienes dudas o sugerencias, no dudes en abrir un issue o contactarme.
