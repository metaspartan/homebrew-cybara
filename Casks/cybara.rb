cask "cybara" do
  version "1.0.1605"
  on_arm { sha256 "970b3c024470a8decfac6c38e8e7d219cdc9b0b1755786170cd73a8dbfef0cb4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1605/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "a6183a1840248b86a5ad52c3bee006a0bd14acc3673664059e797731aeb34e76"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1605/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
