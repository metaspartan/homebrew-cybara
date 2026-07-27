cask "cybara" do
  version "1.0.1973"
  on_arm { sha256 "038915f18730dc36f8743f12a9d31bf4db606e75634c24da6668b9f8b7d45879"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1973/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "2b5810fadbf3d37c120987a2548af634b912e56acb61b615257ae91ac14c7102"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1973/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
