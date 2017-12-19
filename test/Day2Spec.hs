import           Day2
import           Test.Hspec

main :: IO ()
main =
  hspec $ do
  describe "Day2 Part1" $
    it "is correct" $
      day2p1 "5 1 9 5\n7 5 3\n2 4 6 8" `shouldBe` 18
  describe "Day2 Part2" $
    it "is correct" $
      day2p2 "5 9 2 8\n9 4 7 3\n3 8 6 5" `shouldBe` 9
