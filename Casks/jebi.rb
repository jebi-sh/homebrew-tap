cask "jebi" do
  version "0.1.8"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.8/jebi-0.1.8-arm64.dmg"
    sha256 "a3f9bae4cba169cb03c6724b1fcd66da60761a26dd2f50102b47faf99acb5828"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.8/jebi-0.1.8-x64.dmg"
    sha256 "1f7df5d14ad15920782e038373ada2a7e91fa7a27892ec0feb36e9d45463df7e"
  end

  name "jebi"
  desc "The AI-native terminal for Mac"
  homepage "https://jebi.sh"

  depends_on macos: ">= :ventura"

  app "jebi.app"
  binary "#{appdir}/jebi.app/Contents/MacOS/jebi"

  zap trash: [
    "~/Library/Application Support/jebi",
    "~/Library/Preferences/com.jawahar.jebi.plist",
  ]
end
