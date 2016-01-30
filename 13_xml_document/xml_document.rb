class XmlDocument
  def initialize(indent = false)
    @indent = indent
  end

  def hello(opt_hash = {})
    unless opt_hash.empty?
      key = opt_hash.keys[0]
      "<hello #{key.to_s}='#{opt_hash[key]}'/>"
    else
      if block_given?
        unless @indent
          "<hello>#{yield}</hello>"
        else
          str = yield.split("\n")
          unless str.length < 2
            for i in 0...str.length
              str[i] = "  " + str[i] + "\n"
            end
            output = ""
            str.each do |part|
              output += part
            end
            "<hello>\n#{output}</hello>\n"
          else
            "<hello>\n  #{yield}\n</hello>\n"
          end
        end
      else
        "<hello/>"
      end
    end
  end

  def send(tag_name)
    "<#{tag_name}/>"
  end

  def goodbye
    if block_given?
      unless @indent
        "<goodbye>#{yield}</goodbye>"
      else
        str = yield.split("\n")
        unless str.length < 2
          for i in 0...str.length
            str[i] = "  " + str[i] + "\n"
          end
          output = ""
          str.each do |part|
            output += part
          end
          "<goodbye>\n#{output}</goodbye>\n"
        else
          "<goodbye>\n  #{yield}\n</goodbye>\n"
        end
      end
    else
      "<goodbye/>"
    end
  end

  def come_back
    if block_given?
      unless @indent
        "<come_back>#{yield}</come_back>"
      else
        str = yield.split("\n")
        unless str.length < 2
          for i in 0...str.length
            str[i] = "  " + str[i] + "\n"
          end
          output = ""
          str.each do |part|
            output += part
          end
          "<come_back>\n#{output}</come_back>\n"
        else
          "<come_back>\n  #{yield}\n</come_back>\n"
        end
      end
    else
      "<come_back/>"
    end
  end

  def ok_fine(hash)
    key = hash.keys[0]
    "<ok_fine #{key.to_s}='#{hash[key]}'/>"
  end
end