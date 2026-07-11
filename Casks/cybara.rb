cask "cybara" do
  version "1.0.1289"
  on_arm { sha256 "43df6e865cee1c8ebffe44d582283c488d99abedb1a5fc5fc0f0913687623c8b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1289/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "19e9755956626fd6618c335d90247d78c56e352d1171a88981ace49953d51f79"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1289/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
