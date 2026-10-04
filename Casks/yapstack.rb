cask "yapstack" do
  version "1.0.0"

  on_arm do
    sha256 "a383eeef02c83b21fa038c9353ea284d66eacd0b82d60923984795812d65c8a6"
    url "https://github.com/yapstackai/yapstack-releases/releases/download/v#{version}/yapstack_aarch64.dmg"
  end

  on_intel do
    sha256 "338bd4158b740db8822ea80d624a26eae660164f1a6fbf457a8f012c59c9e458"
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
