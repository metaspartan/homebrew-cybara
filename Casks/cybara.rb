cask "cybara" do
  version "1.0.1521"
  on_arm { sha256 "0ce85c0d15283b5123ac67c13d467c795f82f5b189923f5d843f3f5767493085"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1521/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "c9d3e66d9797b75fefe190490574c7cc45ff54b283764b68ad93bafcdf82ddfe"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1521/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
