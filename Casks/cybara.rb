cask "cybara" do
  version "1.0.1706"
  on_arm { sha256 "9d01bece361d0117530abbb6908a2c10f6db561a5ee26350be9d3bd52d26c75c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1706/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "3c4d10a94abc4cae5a402345d5b4a8a3bedf9cdb81448b19c1561933d9093f59"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1706/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
