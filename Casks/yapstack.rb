cask "yapstack" do
  version "1.0.0"

  on_arm do
    sha256 "46fd63eb14213c8182a2015b957b1dbfc1724ccd085e07fafcfa14ed81dc2ed6"
    url "https://github.com/yapstackai/yapstack-releases/releases/download/v#{version}/yapstack_aarch64.dmg"
  end

  on_intel do
    sha256 "a2ad0b58194f5b64f671112adfc66dc19d2711653cb3d3f367abd41154654040"
    url "https://github.com/yapstackai/yapstack-releases/releases/download/v#{version}/yapstack_x86_64.dmg"
  end

  name "YapStack"
  desc "Cloud speech-to-text desktop app"
  homepage "https://github.com/yapstackai/yapstack-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "YapStack.app"

  zap trash: [
    "~/Library/Application Support/com.yapstack.app",
    "~/Library/Logs/com.yapstack.app",
    "~/Library/Preferences/com.yapstack.app.plist",
  ]
end
