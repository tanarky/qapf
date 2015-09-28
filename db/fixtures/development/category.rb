# coding: utf-8
Category.seed do |s|
  s.id = 0
  s.name = 'root'
end
Category.seed do |s|
  s.id = 1
  s.name = '家電'
  s.parent_id = 0
end
Category.seed do |s|
  s.id = 2
  s.name = 'ファッション'
  s.parent_id = 0
end
Category.seed do |s|
  s.id = 3
  s.name = '女性'
  s.parent_id = 2
end
Category.seed do |s|
  s.id = 4
  s.name = '男性'
  s.parent_id = 2
end
Category.seed do |s|
  s.id = 5
  s.name = 'TV'
  s.parent_id = 1
end
Category.seed do |s|
  s.id = 6
  s.name = '冷蔵庫'
  s.parent_id = 1
end
Category.seed do |s|
  s.id = 7
  s.name = 'Sony'
  s.parent_id = 5
end
Category.seed do |s|
  s.id = 8
  s.name = 'Panasonic'
  s.parent_id = 5
end
