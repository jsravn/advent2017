import           Day1
import           Test.Hspec

main :: IO ()
main =
  hspec $ do
  describe "Day1 Part1" $
    it "is correct" $ do
      day1p1 "1122" `shouldBe` "3"
      day1p1 "1111" `shouldBe` "4"
      day1p1 "1234" `shouldBe` "0"
      day1p1 "91212129" `shouldBe` "9"
  describe "Day1 Part2" $
    it "is correct" $ do
      day1p2 "1212" `shouldBe` "6"
      day1p2 "1221" `shouldBe` "0"
      day1p2 "123425" `shouldBe` "4"
      day1p2 "123123" `shouldBe` "12"
      day1p2 "12131415" `shouldBe` "4"
