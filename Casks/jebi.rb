cask "jebi" do
  version "0.1.19"

  url "https://github.com/jebi-sh/jebi/releases/download/v0.1.19/jebi-0.1.19-arm64.dmg"
  sha256 "ddfe6690f510bd7859350f730c5c99d1afd94f9f51d5f61abc74b9ade5e8e171"

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
