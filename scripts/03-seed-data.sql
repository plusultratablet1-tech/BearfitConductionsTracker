-- Seed data for Bearfit Conduction Tracker

-- Insert coaches
INSERT INTO coaches (id, name, password, branch) VALUES
  ('11111111-1111-1111-1111-111111111111', 'Coach Jaoquin', 'Jaoquin123', 'Malingap'),
  ('22222222-2222-2222-2222-222222222222', 'Coach Amiel', 'Amiel123', 'Malingap'),
  ('33333333-3333-3333-3333-333333333333', 'Coach Hunejin', 'Hunejin123', 'Erod'),
  ('44444444-4444-4444-4444-444444444444', 'Coach Andrei', 'Andrei123', 'Erod'),
  ('55555555-5555-5555-5555-555555555555', 'Coach Isaac', 'Isaac123', 'Cainta')
ON CONFLICT (name) DO NOTHING;

-- Insert sample clients for Coach Jaoquin (Staggered 24)
INSERT INTO clients (id, name, qr_code, package_type, remaining_balance, starting_balance, coach_id, branch, payment_status, is_inactive) VALUES
  ('c0000001-0001-0001-0001-000000000001', 'Paola', 'QR_001', 'Staggered 24', 0, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', 'DONE', false),
  ('c0000001-0001-0001-0001-000000000002', 'Gabe', 'QR_002', 'Staggered 24', 9, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', '3rd payment DUE', false),
  ('c0000001-0001-0001-0001-000000000003', 'Alvaro', 'QR_003', 'Staggered 24', 24, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', '1st payment paid', false),
  ('c0000001-0001-0001-0001-000000000004', 'Bo', 'QR_004', 'Staggered 24', 11, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', '3rd payment paid', false),
  ('c0000001-0001-0001-0001-000000000005', 'Data', 'QR_005', 'Staggered 24', 18, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', '2nd Payment DUE', false),
  ('c0000001-0001-0001-0001-000000000006', 'Gabbie', 'QR_006', 'Staggered 24', 15, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', '2nd payment paid', false),
  ('c0000001-0001-0001-0001-000000000007', 'Polyn', 'QR_007', 'Staggered 24', 4, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', 'fully paid', false),
  ('c0000001-0001-0001-0001-000000000008', 'Lomi', 'QR_008', 'Staggered 24', 19, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', '1st payment paid', true),
  ('c0000001-0001-0001-0001-000000000009', 'Gerard', 'QR_009', 'Staggered 24', 18, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', '2nd payment DUE', false),
  ('c0000001-0001-0001-0001-000000000010', 'Rikki', 'QR_010', 'Staggered 24', 13, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', '2nd payment paid', false)
ON CONFLICT (qr_code) DO NOTHING;

-- Insert sample clients for Coach Jaoquin (Full 24)
INSERT INTO clients (id, name, qr_code, package_type, remaining_balance, starting_balance, coach_id, branch, payment_status, is_inactive) VALUES
  ('c0000001-0001-0001-0001-000000000011', 'Dino', 'QR_011', 'Full 24', 15, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', 'Full 24', false),
  ('c0000001-0001-0001-0001-000000000012', 'Chich', 'QR_012', 'Full 24', 22, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', 'Full 24', false),
  ('c0000001-0001-0001-0001-000000000013', 'Debbie', 'QR_013', 'Full 24', 22, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', 'Full 24', false),
  ('c0000001-0001-0001-0001-000000000014', 'Leo', 'QR_014', 'Full 24', 9, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', 'Full 24', false),
  ('c0000001-0001-0001-0001-000000000015', 'Durben', 'QR_015', 'Full 24', 16, 24, '11111111-1111-1111-1111-111111111111', 'Malingap', 'Full 24', false)
ON CONFLICT (qr_code) DO NOTHING;

-- Insert sample clients for Coach Jaoquin (Full 48)
INSERT INTO clients (id, name, qr_code, package_type, remaining_balance, starting_balance, coach_id, branch, payment_status, is_inactive) VALUES
  ('c0000001-0001-0001-0001-000000000024', 'Ilynne', 'QR_024', 'Full 48', 43, 48, '11111111-1111-1111-1111-111111111111', 'Malingap', 'Full 48', false),
  ('c0000001-0001-0001-0001-000000000025', 'Ria', 'QR_025', 'Full 48', 43, 48, '11111111-1111-1111-1111-111111111111', 'Malingap', 'Full 48', false),
  ('c0000001-0001-0001-0001-000000000026', 'Manny', 'QR_026', 'Full 48', 39, 48, '11111111-1111-1111-1111-111111111111', 'Malingap', 'Full 48', false)
ON CONFLICT (qr_code) DO NOTHING;

-- Insert sample clients for Coach Amiel
INSERT INTO clients (id, name, qr_code, package_type, remaining_balance, starting_balance, coach_id, branch, payment_status, is_inactive) VALUES
  ('c0000001-0001-0001-0001-000000000030', 'Maria', 'QR_030', 'Full 24', 20, 24, '22222222-2222-2222-2222-222222222222', 'Malingap', 'Full 24', false),
  ('c0000001-0001-0001-0001-000000000031', 'Juan', 'QR_031', 'Staggered 24', 18, 24, '22222222-2222-2222-2222-222222222222', 'Malingap', '2nd payment DUE', false)
ON CONFLICT (qr_code) DO NOTHING;

-- Insert sample clients for Coach Hunejin
INSERT INTO clients (id, name, qr_code, package_type, remaining_balance, starting_balance, coach_id, branch, payment_status, is_inactive) VALUES
  ('c0000001-0001-0001-0001-000000000040', 'Star', 'QR_040', 'Full 24', 25, 24, '33333333-3333-3333-3333-333333333333', 'Erod', '+5 free', false),
  ('c0000001-0001-0001-0001-000000000041', 'Christine', 'QR_041', 'Staggered 24', 22, 24, '33333333-3333-3333-3333-333333333333', 'Erod', '24 stag, 2/25 first payment', false)
ON CONFLICT (qr_code) DO NOTHING;

-- Insert sample clients for Coach Andrei
INSERT INTO clients (id, name, qr_code, package_type, remaining_balance, starting_balance, coach_id, branch, payment_status, is_inactive) VALUES
  ('c0000001-0001-0001-0001-000000000050', 'Paolo', 'QR_050', 'Full 24', 22, 24, '44444444-4444-4444-4444-444444444444', 'Erod', 'Full 24', false)
ON CONFLICT (qr_code) DO NOTHING;

-- Insert sample clients for Coach Isaac
INSERT INTO clients (id, name, qr_code, package_type, remaining_balance, starting_balance, coach_id, branch, payment_status, is_inactive) VALUES
  ('c0000001-0001-0001-0001-000000000060', 'Ana', 'QR_060', 'Full 24', 24, 24, '55555555-5555-5555-5555-555555555555', 'Cainta', 'Full 24', false)
ON CONFLICT (qr_code) DO NOTHING;
