cask "cybara" do
  version "1.0.2043"
  on_arm { sha256 "78b8eba295deb7e2f252f977f0ada54b0bd79a2e57d581fb95fa259ab0dd64ec"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2043/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "793cca906781bfff566040f85746583a26819427e02ca1a6a1cd5079393e0256"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2043/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
