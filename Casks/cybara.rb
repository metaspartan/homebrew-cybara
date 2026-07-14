cask "cybara" do
  version "1.0.1530"
  on_arm { sha256 "9d2e607875c670a1fe40dfba2aec23e8505f657a5c4bbfdf51151a508e5174bd"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1530/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "72394512df27e221d80a5f13cb47c3cef7989af16d116ad37a61fa7fd773132b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1530/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
