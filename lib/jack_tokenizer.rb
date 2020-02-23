class JackTokenizer
  KEYWORDS = ['class', 'constructor', 'function', 'method', 'field', 'static', 'var', 'int', 'char', 'boolean', 'void', 'true', 'false', 'null', 'this', 'let', 'do', 'if', 'else', 'while', 'return']
  SYMBOLS = ['{', '}', '(', ')', '[', ']', '.', ',', ';', '+', '-', '*', '/', '&', '|', '<', '>', '=', '~']


  def initialize(source_filepath)
    @source_filepath = source_filepath
    @tokens = []
    @current_token_type = nil
    @current_token_body = ""
  end

  def run
    # open file
    File.open(@source_filepath, "r") do |f|
      while c = f.getc
      end
    end
    write_tokens_to_file
  end

  private

  def reset_current_token
    @current_token_type = nil
    @current_token_body = ""
  end

  def write_tokens_to_file
    File.open(xml_token_filepath, "w") do |f|
      f.puts("<tokens>")
      @tokens.each do |token|
        xml_token = format_token_to_xml(token)
        f.puts(xml_token)
      end
      f.puts("</tokens>")
    end
  end

  def xml_token_filepath
    filename = File.basename(@source_filepath, ".jack") + "T.xml"
    path_to_file = File.dirname(@source_filepath)
    path_to_file + "/" + filename
  end

  def format_token_to_xml(token)
    "  <#{token.type}>#{token.body}</#{token.type}>"
  end
end
