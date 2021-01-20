require 'pdf-reader'

class Comparator
  def get_text_from_PDF(file_name)
    text = ''
    reader = PDF::Reader.new(file_name)

    reader.pages.each do |page|
      text += page.text
    end
    text
  end
  def isEq(origin, offspring, ignored = [])
    text1 = get_text_from_PDF(origin)
    text2 = get_text_from_PDF(offspring)
    lines = text1.split("\n").zip(text2.split("\n"))
    diff = []
    lines.each_with_index do |line, index|
      next if line[0] == line[1]
      next if ignored.include?(index)
      diff.push({number: index, '1': line[0], '2': line[1]})
    end
    return true if diff.empty?
    diff
  end
end
