cask "cybara" do
  version "1.0.1955"
  on_arm { sha256 "60adadb13159fa4e76a743479f2ce069cbd255d412b8026a166106fb63a6aba7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1955/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "12a99f056274c59d04d36bc715a8e1a6f483502945d1bc5e268303e404154968"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1955/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
