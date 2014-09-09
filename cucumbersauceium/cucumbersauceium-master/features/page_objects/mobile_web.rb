class MobileWeb
  def initialize
    @article_types = {
      "standard" => "/articles/1285401-olympic-sprinter-kim-collins-sent-home-for-visiting-wife-children",
      "debate" => "/articles/1293254-debate-what-should-be-the-primary-back-with-mathews-out",
      "slideshow" => "/articles/1521247-biggest-signs-that-dwight-howard-will-remain-with-la-lakers-long-term",
      "liveblog" => "/articles/1285432-usa-vs-china-womens-basketball-live-score-stats-recap",
      "video" => "/articles/1294582-london-2012-grading-team-usas-gold-medal-win-over-spain",
      "social" => "/articles/1828215-high-school-safety-makes-amazing-leaping-one-handed-interception",
      "uber" => "articles/1733665-fan-yells-mashed-potatoes-as-tiger-tees-off",
      "homepage" => "/"
    }
  end

  def go_to_article_type(type)
    TestHelper.goto(@article_types[type])
    begin 
      sleep 1
      $driver.find_element(:css, ".no-thanks").click
    rescue
    end
    begin
      sleep 1
      $driver.find_element(:css, "div#smart-banner > div.close").click
    rescue
    end
  end

end
