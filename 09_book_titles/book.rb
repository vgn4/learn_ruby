class Book

  attr_reader :title

  def title=(some_title)

    dont_capitalize = %w[the a an and in of]
    title_case = some_title.split(" ")

    title_case =
        [title_case[0].capitalize] +
            title_case[1..-1].collect do |word|
              if !dont_capitalize.include?(word)
                word.capitalize
              else
                word
              end
            end
    @title = title_case.join(" ")
  end
end
