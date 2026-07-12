cask "cybara" do
  version "1.0.1364"
  on_arm { sha256 "250829e4e3f6cfd3c340891df12660650d994e968d33a9718b94f8aa82f019c3"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1364/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "14961d2f6f2ba2a5fa267a3e4ff919a03ccec2be495ac7ce1e985d24986e6f24"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1364/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
