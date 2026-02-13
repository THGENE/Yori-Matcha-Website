INSERT INTO public.products (id, name, price, image, category) VALUES
  ('yame-velvet', 'Yame Velvet', 34.90, '/images/yame-velvet.jpg', 'matcha'),
  ('uji-harmony', 'Uji Harmony', 32.90, '/images/uji-harmony.jpg', 'matcha'),
  ('yame-heritage', 'Yame Heritage', 42.90, '/images/yame-heritage.jpg', 'matcha'),
  ('uji-single-garden', 'Uji Single Garden', 44.90, '/images/uji-single-garden.jpg', 'matcha'),
  ('daily-matcha', 'Daily Matcha Latte', 24.90, '/images/daily-matcha.jpg', 'matcha'),
  ('discovery', 'Pack Decouverte', 14.90, '/images/pack-decouverte.jpg', 'pack'),
  ('duo-ceremonial', 'Pack Duo Ceremonial', 7.90, '/images/yame-velvet.jpg', 'pack'),
  ('duo-grand-cru', 'Pack Duo Grand Cru', 9.90, '/images/yame-heritage.jpg', 'pack'),
  ('chasen', 'Chasen - Fouet en bambou', 24.90, NULL, 'accessory'),
  ('chawan', 'Chawan - Bol a matcha', 29.90, NULL, 'accessory'),
  ('chashaku', 'Chashaku - Cuillere en bambou', 12.90, NULL, 'accessory')
ON CONFLICT (id) DO UPDATE SET price = EXCLUDED.price, name = EXCLUDED.name;
