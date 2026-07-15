cask "cybara" do
  version "1.0.1614"
  on_arm { sha256 "df64998f2df2ff07a3a2ebebe67e3663fb790f9799adf64b8140db01ad6bfd1f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1614/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "e5c52e4b2d986c68893683bd0fca7b3440d674c6e093015b36718c1640bff6df"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1614/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
