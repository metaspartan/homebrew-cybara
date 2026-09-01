cask "cybara" do
  version "1.0.2230"
  on_arm { sha256 "87122429d818a19302a3502837899aad6a183a47d5c90510fb9f4171db32fbff"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2230/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "a6e81e580d78d8eb09790b1f07f53652c5b921f9226f12753d1da42cdf938368"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2230/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
