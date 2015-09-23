# coding: utf-8
User.seed do |s|
  s.id = 1
  s.email = 'tanarky@yahoo.co.jp'
  s.encrypted_password = '$2a$10$kxxw7dMVAyGKy4fpfDYAeu3Xj/NNjwNfuutkZD4QqoGkQ2ODXoLli'
  s.sign_in_count = 0
end

User.seed do |s|
  s.id = 2
  s.email = 'tanarky@gmail.com'
  s.encrypted_password = '$2a$10$4IGma0c2b0V4mYhLHF1Os.LJq.tqBN3kNiOHXYg.ERH1cqU8hurUu'
  s.sign_in_count = 0
end
