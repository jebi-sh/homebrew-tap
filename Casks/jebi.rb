cask "jebi" do
  version "0.1.6"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.6/jebi-0.1.6-arm64.dmg"
    sha256 "076d585d7769508b0cea9135c34e812d6cd7d118a34e431a5f829953399086fc"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.6/jebi-0.1.6-x64.dmg"
    sha256 "ce2eb3e57ef216cc20779aeedbb6f1b6667a78db66633ebe7ddf58c75fc5c5b9"
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
