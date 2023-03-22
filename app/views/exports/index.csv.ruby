require 'csv'

CSV.generate(encoding: 'UTF-8') do |csv|
  csv << [Diary.human_attribute_name(:date), Diary.human_attribute_name(:body)]
  @diaries.each do |diary|
    csv << [l(diary.date), diary.body]
  end
end