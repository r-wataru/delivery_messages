10.times do |n|
  Document.create(subject: "No.#{n}のタイトルです。", body: "これはNo#{n}の本文です" * 10)
end