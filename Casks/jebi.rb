cask "jebi" do
  version "0.1.15"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.15/jebi-0.1.15-arm64.dmg"
    sha256 "3ceeee7aad58bb7460aec574a3e45f5022817b5ed01ef3d0711d083017197e68"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.15/jebi-0.1.15-x64.dmg"
    sha256 "6873eac1bfaae817c69abbcdb043a892c9ba6ecf91e551e2a2f37a73b8ed3a1f"
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
