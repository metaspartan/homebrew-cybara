cask "cybara" do
  version "1.0.2328"
  on_arm { sha256 "80e0492dadc58f2f9b3f8d93e4b94118e15f73d496d91a659d9f93ae10ea7dde"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2328/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "d1fea5e857a41b016a5eed8b1e3299220614c71a45637b085ec0c10f1aa33d9b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2328/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
