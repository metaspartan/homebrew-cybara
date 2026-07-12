cask "cybara" do
  version "1.0.1393"
  on_arm { sha256 "89de5ba9f39ad1046bfc130a33949cb2e7852135d94323351ed290a7f3f82891"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1393/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "0e8afdc95f333f6b27f80c4ca12337a01103f92b152e5a1cb491702d62d5226b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1393/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
