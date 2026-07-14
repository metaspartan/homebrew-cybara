cask "cybara" do
  version "1.0.1558"
  on_arm { sha256 "98e84922f2efc9ea39707f0649c9c0d639e345d668009f821ad02604545c3314"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1558/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "e7429bdf638599da00928c11f98d5ae26f87966de0d675ab071ebbf21835a12d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1558/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
