cask "jebi" do
  version "0.1.13"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.13/jebi-0.1.13-arm64.dmg"
    sha256 "a67fdfe38e0f87a783aa55a38e57a4658d34f4dc093298b614ca8fc5253a8e82"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.13/jebi-0.1.13-x64.dmg"
    sha256 "6dbf2a887f5e6eb83118bb65bff406bd5b0cc8fe554aa7c5d7773c87dac91ebc"
  end

  name "jebi"
  desc "The AI-native terminal for Mac"
  homepage "https://jebi.sh"

  depends_on macos: ">= :monterey"

  app "jebi.app"
  binary "#{appdir}/jebi.app/Contents/MacOS/jebi"

  zap trash: [
    "~/Library/Application Support/jebi",
    "~/Library/Preferences/com.jawahar.jebi.plist",
  ]
end
