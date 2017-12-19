import           Day1
import           Test.Hspec

main :: IO ()
main =
  hspec $
  describe "Day1" $
  it "is correct" $ do
    day1 "1122" `shouldBe` "3"
    day1 "1111" `shouldBe` "4"
    day1 "1234" `shouldBe` "0"
    day1 "91212129" `shouldBe` "9"
