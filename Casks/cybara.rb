cask "cybara" do
  version "1.0.2555"
  on_arm { sha256 "f0d588698463c72f769061616b512ae7299971bb810676e6b39b4ffba3ec842e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2555/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "cd22d92af12016188911dfe087409dc857d856877424f4c45b1b598c91d1def9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2555/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
