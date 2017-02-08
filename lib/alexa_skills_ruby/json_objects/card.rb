module AlexaSkillsRuby
  module JsonObjects
    class Card < JsonObject
      attributes :type, :title, :content, :text
      json_object_attributes :image, Image

      def self.simple(title, content)
        card = new
        card.type = "Simple"
        card.title = title
        card.content = content
        card
      end
      
      def self.link_account
        card = new
        card.type = "LinkAccount"
        card
      end
      
      def self.standard(title, text, small_image_url, large_image_url)
        card = new
        card.type = "Standard"
        card.title = title
        card.text = text
        card.smallImageUrl = small_image_url
        card.largeImageUrl = large_image_url
        card
      end
    end
  end
end
