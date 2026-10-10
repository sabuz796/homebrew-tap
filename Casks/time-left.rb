cask "time-left" do
  version "1.2.1"
  sha256 "0fce3e1af4d6be89939da03c59ac0a044c0402b19e2e97646e679a06d86de023"

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
