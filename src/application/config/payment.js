import express from 'express';
const router = express.Router();
import Stripe from 'stripe'
const stripe = Stripe('sk_test_51RHoePQpIu5EfrpZ9GhRvHmRDfP8sn3KRLuAjZuCdnmQ499EPsJzEDSd0o9eaS6LBEeiXcOrmOuKZSzMkslXtfte00H9DR58sI');

router.post('/checkout-session', async (req, res) => {
  const { cartItems } = req.body;

  try {
    const session = await stripe.checkout.sessions.create({
      payment_method_types: ['card'],
      mode: 'payment',
      line_items: cartItems.map(item => ({
        price_data: {
          currency: 'eur',
          product_data: {
            name: item.name,
          },
          unit_amount: item.price * 100, // en céntimos
        },
        quantity: item.quantity,
      })),
      success_url: 'http://localhost:3000/success',
      cancel_url: 'http://localhost:3000/cancel',
    });

    res.json({ url: session.url });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

const paymentRoutes = (app, basePath) => {
  app.use(basePath, router);
};

export default paymentRoutes;