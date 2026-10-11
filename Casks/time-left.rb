cask "time-left" do
  version "1.3.2"
  sha256 "b137ba0ff8c58234927a0cde6ab28e42adf5db754b3e2862182a33db3036352a"

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
