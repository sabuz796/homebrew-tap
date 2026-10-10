cask "time-left" do
  version "1.2.1"
  sha256 "cb77022745dc473c14c19dfb3de88b30606e192cc7690b3681e1b15dd3020d2e"

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
