# coding: utf-8
Question.seed do |s|
  s.id = 1
  s.title = '質問タイトル1 from user_id = 1'
  s.body = <<CODE
質問本文1

あああ

いいい
CODE
  s.user_id = 1
end

Question.seed do |s|
  s.id = 2
  s.title = '質問タイトル2 from user_id = 2'
  s.body = <<CODE
質問本文2

ううう

えええ
CODE
  s.user_id = 2
end

Question.seed do |s|
  s.id = 3
  s.title = '質問タイトル3 from user_id = 1'
  s.body = <<CODE
質問本文3

おおお

かかか
CODE
  s.user_id = 1
end

Question.seed do |s|
  s.id = 4
  s.title = '質問タイトル4 from user_id = 2'
  s.body = <<CODE
質問本文4

ききき

くくく
CODE
  s.user_id = 2
end
