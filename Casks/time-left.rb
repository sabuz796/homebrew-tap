cask "time-left" do
  version "1.3.0"
  sha256 "5d8a9da80becc8d79ab58ae4b444d3c007e0e9839c4ecb270cebfcc168b54d33"

  url "https://github.com/sabuz796/time-left/releases/download/v#{version}/TimeLeft.dmg"
  name "Time Left"
  desc "Menu bar countdown showing time left in the day, week, month, and year"
  homepage "https://github.com/sabuz796/time-left"

  depends_on macos: :ventura

  app "TimeLeft.app"

  zap trash: "~/Library/Preferences/com.timeleft.app.plist"

  caveats <<~EOS
    On first launch macOS may report the app is from an unidentified developer.
    Clear the quarantine flag once, then open it:

      xattr -d com.apple.quarantine /Applications/TimeLeft.app
  EOS
end
