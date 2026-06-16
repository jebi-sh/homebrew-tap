cask "jebi" do
  version "0.1.16"

  url "https://github.com/jebi-sh/jebi/releases/download/v0.1.16/jebi-0.1.16-arm64.dmg"
  sha256 "8348596a93a3131fc86093af67e3b8d1bae8b2c7f96203503c05d452cd55c69d"

  name "jebi"
  desc "The AI-native terminal for Mac"
  homepage "https://jebi.sh"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "jebi.app"
  binary "#{appdir}/jebi.app/Contents/MacOS/jebi"

  zap trash: [
    "~/Library/Application Support/jebi",
    "~/Library/Preferences/com.jawahar.jebi.plist",
  ]
end
