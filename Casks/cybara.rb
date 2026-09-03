cask "cybara" do
  version "1.0.2264"
  on_arm { sha256 "bdc93caf64c95fbb5842bc97e818714e5116d30bad6bd131d3f4c15304965105"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2264/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "e635a7468360c1dbe6e69740ce4bc8c52d401c0a475a61ea9e670720ace62f08"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2264/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
