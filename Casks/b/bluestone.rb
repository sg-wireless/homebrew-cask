cask "bluestone" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "f2d69d6574e34463bdef1c4d9007457a9743d222ac84e466213b128cc2af8f2e",
         intel: "806c30062cba751b5800c5feba51ea5766ccd5f4374e14e514d24a0a732fef14"

  url "https://github.com/1943time/bluestone/releases/download/v#{version}/Bluestone-mac-#{arch}.dmg"
  name "Bluestone"
  desc "WYSIWYG Markdown editor"
  homepage "https://github.com/1943time/bluestone"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Inkdown.app"

  zap trash: [
    "~/Library/Application Support/bluestone",
    "~/Library/Preferences/bluestone.plist",
    "~/Library/Saved Application State/bluestone.savedState",
  ]
end
