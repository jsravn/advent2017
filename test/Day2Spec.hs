import           Day2
import           Test.Hspec

main :: IO ()
main =
  hspec $
  describe "Day2 Part1" $
    it "is correct" $
      day2p1 "5 1 9 5\n7 5 3\n2 4 6 8" `shouldBe` 18
