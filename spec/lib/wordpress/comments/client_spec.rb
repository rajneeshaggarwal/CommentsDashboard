module Wordpress
  module Comments
    class Client

      attr_reader :url

      def initialize url
         @url = url
      end
    end
  end
end

describe Wordpress::Comments::Client do

  describe "#initialize" do

    it "stores a URL" do
      client = Wordpress::Comments::Client.new 'http://mashable.com/comments/feed'
      expect(client.url).to eq 'http://mashable.com/comments/feed'
    end

  end
end