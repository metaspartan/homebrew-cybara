cask "cybara" do
  version "1.0.2484"
  on_arm { sha256 "f6ff97e5e51af1ae8deca54dfb1c5a6295424022a8c7f0c6cc2cb510beb677f4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2484/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "99cc366c6ab78be33881947432b484f3d5f6f67313756522105a569827f99a50"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2484/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
