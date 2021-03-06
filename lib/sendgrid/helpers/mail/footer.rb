module SendGrid
  class Footer
    attr_accessor :enable, :text, :html

    def initialize(enable: nil, text: nil, html: nil)
      @enable = enable
      @text = text
      @html = html
    end

    def to_json(*)
      {
        'enable' => self.enable,
        'text' => self.text,
        'html' => self.html
      }.delete_if { |_, value| value.to_s.strip == '' }
    end
  end
end
