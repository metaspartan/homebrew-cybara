cask "cybara" do
  version "1.0.2026"
  on_arm { sha256 "9be6828e3b05f409796c8ae5edc32e742054fa6510faf176bf42e9212687c2c4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2026/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "ac42e36ab8e053a56e2599e2824986088083378650c85b0e7e1b0cb5c4095682"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2026/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
