module HappyWords
  module Patterns
    extend Re

    HAPPY = (
      re("blessed") |
      re("happy") |
      re("blest") |
      re("blissful") |
      re("blithe") |
      re("can't complain") |
      re("captivated") |
      re("cheerful") |
      re("chipper") |
      re("chirpy") |
      re("content") |
      re("contented") |
      re("convivial") |
      re("delighted") |
      re("ecstatic") |
      re("elated") |
      re("exultant") |
      re("flying high") |
      re("gay") |
      re("glad") |
      re("gleeful") |
      re("gratified") |
      re("intoxicated") |
      re("jolly") |
      re("joyful") |
      re("joyous") |
      re("jubilant") |
      re("laughing") |
      re("light") |
      re("lively") |
      re("looking good") |
      re("merry") |
      re("mirthful") |
      re("on cloud nine") |
      re("overjoyed") |
      re("peaceful") |
      re("peppy") |
      re("perky") |
      re("playful") |
      re("pleasant") |
      re("pleased") |
      re("sparkling") |
      re("sunny") |
      re("thrilled") |
      re("tickled") |
      re("tickled pink") |
      re("up") |
      re("upbeat") |
      re("walking on air")).regexp
  end
end
