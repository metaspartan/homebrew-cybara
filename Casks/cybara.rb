cask "cybara" do
  version "1.0.1518"
  on_arm { sha256 "ad8911680c495bf2dc59b4e62d8c66632fad093c640363201e0d14de853d7c72"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1518/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "f2a30d5670af3476676f0730ed6ea49c39eaa9d840445fa286f39cd0202ec6f2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1518/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
