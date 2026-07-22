cask "cybara" do
  version "1.0.1856"
  on_arm { sha256 "fe7bb76c94748d494a04ecbd6a52d35f91568e7bca7537ed738a90c1f8e6f649"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1856/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4974eb76599eccab004517b7bc937c033d2aab7a24bedfc3d8018c42c49bf391"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1856/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
