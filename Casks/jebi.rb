cask "jebi" do
  version "0.1.7"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.7/jebi-0.1.7-arm64.dmg"
    sha256 "fcf939ef72b405f250d7557d9a24667909526d33e218e46dfc00e7da437cc83b"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.7/jebi-0.1.7-x64.dmg"
    sha256 "af7e8b92e2a0035d9a01d6e82276e23ff76dccc895bc25799d4852e015f9429a"
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
