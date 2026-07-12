cask "cybara" do
  version "1.0.1383"
  on_arm { sha256 "4001286ad454ff185ec059d925e2dc6e86626be49e6e62568d3b29b2793c2165"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1383/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "75fa7f48d6fc0cf01efd198fdfcfc66a76eda13152a5ea15f0dd1f7131b72c03"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1383/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
