# coding: utf-8
User.seed do |s|
  s.id    = 1
  s.email = 'tanarky@yahoo.co.jp'
  s.role  = 'customer'
  s.encrypted_password = '$2a$10$kxxw7dMVAyGKy4fpfDYAeu3Xj/NNjwNfuutkZD4QqoGkQ2ODXoLli'
  s.sign_in_count = 0
end

User.seed do |s|
  s.id    = 2
  s.email = 'tanarky@gmail.com'
  s.role  = 'admin'
  s.encrypted_password = '$2a$10$4IGma0c2b0V4mYhLHF1Os.LJq.tqBN3kNiOHXYg.ERH1cqU8hurUu'
  s.sign_in_count = 0
end

User.seed do |s|
  s.id    = 3
  s.email = 'satoshi@tanarky.com'
  s.role  = 'customer'
  s.encrypted_password = '$2a$10$Fr1bH/04qkw5kJx49Q4i0eWgqoaPhIrxUfTTUuDlwT4Mr2adjfKIG'
  s.sign_in_count = 0
end

User.seed do |s|
  s.id    = 4
  s.email = 'satoshi+qa4@tanarky.com'
  s.role  = 'customer'
  s.encrypted_password = '$2a$10$hbFQ0uowm083M53/f30n6uj8EV1cwOU3oQsIidizQ5mixL/AOmEC2'
  s.sign_in_count = 0
end
