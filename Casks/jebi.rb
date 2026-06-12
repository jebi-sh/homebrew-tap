cask "jebi" do
  version "0.1.10"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.10/jebi-0.1.10-arm64.dmg"
    sha256 "944f24684c07e07ed2dfcff03705005bdd29daa88bdee1f3376d6739905d3217"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.10/jebi-0.1.10-x64.dmg"
    sha256 "ca7873a6d485effd0891445fee57653726f100a9262869bdf2a3506f23494997"
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
