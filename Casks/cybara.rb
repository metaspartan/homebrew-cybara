cask "cybara" do
  version "1.0.1701"
  on_arm { sha256 "2aef5455b1ac44e84a57df5e0ee9263c901a7aea173a0cfcc2e6edd3ce6dc5bd"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1701/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "80f99a9c4704224c952a12777fb14b13079feeb183ba95fe1cb4f0ed3648afa5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1701/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
