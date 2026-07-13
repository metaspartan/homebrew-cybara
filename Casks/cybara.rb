cask "cybara" do
  version "1.0.1446"
  on_arm { sha256 "9eaa16453c076499f91d521869623e904079c4a47c7e6825602579f444e569d2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1446/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "53f2833cab4a3b1f0bac64811e29e79397a07f6f155c29204b0aa56286111701"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1446/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
