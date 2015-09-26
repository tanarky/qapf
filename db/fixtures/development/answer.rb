# coding: utf-8
Answer.seed do |s|
  s.id = 1
  s.question_id = 1
  s.body = <<CODE
回答本文1

あああ

いいい
CODE
  s.user_id = 2
end

Answer.seed do |s|
  s.id = 2
  s.question_id = 1
  s.body = <<CODE
回答本文2

あああ

いいい
CODE
  s.user_id = 3
end

Answer.seed do |s|
  s.id = 3
  s.question_id = 1
  s.body = <<CODE
回答本文3

あああ

いいい
CODE
  s.user_id = 4
end

Answer.seed do |s|
  s.id = 4
  s.question_id = 2
  s.body = <<CODE
回答本文4

あああ

いいい
CODE
  s.user_id = 1
end
