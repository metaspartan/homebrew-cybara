cask "cybara" do
  version "1.0.1402"
  on_arm { sha256 "6c7d601d9a14e8ac36b375e221eca30b359487da4ec2f133267c53a524850847"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1402/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6f336199fd3c8b69ef801f0e8e297ed7de23aaa5799637b23fc48ec1a11a04a4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1402/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
