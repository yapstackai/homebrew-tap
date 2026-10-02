cask "yapstack" do
  version "1.0.0"
  sha256 "c1b42ccd3ee86e7a2ef943fa5b1630ff26025b16458c9ff4bab7a2b58db279e4"

  url "https://github.com/yapstackai/yapstack-releases/releases/download/v#{version}/yapstack_aarch64.dmg"
  name "YapStack"
  desc "Cloud speech-to-text desktop app"
  homepage "https://github.com/yapstackai/yapstack-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "YapStack.app"

  zap trash: [
    "~/Library/Application Support/com.yapstack.app",
    "~/Library/Logs/com.yapstack.app",
    "~/Library/Preferences/com.yapstack.app.plist",
  ]
end
